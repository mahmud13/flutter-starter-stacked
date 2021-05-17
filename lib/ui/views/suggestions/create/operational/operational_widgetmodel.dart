import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../../app/app.locator.dart';
import '../../../../../app/app.logger.dart';
import '../../../../../models/application_models.dart';
import '../../../../../services/faktory_service.dart';
import '../../../../../services/suggestion_service.dart';
import '../../../../../services/user_service.dart';
import '../../../../base/authentication_viewmodel.dart';
import '../../../../base/stepper_viewmodel.dart';

class OperationalWidgetModel extends BaseViewModel
    with StepperViewModel, AuthenticationViewModel {
  final _navigationService = locator<NavigationService>();
  final _suggestionService = locator<SuggestionService>();
  final _userService = locator<UserService>();
  final _faktoryService = locator<FaktoryService>();
  final _dialogeService = locator<DialogService>();

  final _picker = ImagePicker();
  final log = getLogger('OperationalWidgetModel');

  bool? isLocationServiceEnabled;
  LocationPermission? locationPermission;

  bool? _isOpen;
  File? _gatePictureFile;
  Faktory? _faktory;
  PointField? operationalField;

  Position? _currentPosition;
  StreamSubscription<Position>? _positionStream;
  late double _distance;

  File? get gatePictureFile => _gatePictureFile;
  Image? get gatePicuture =>
      _gatePictureFile == null ? null : Image.file(_gatePictureFile!);

  Position? get currentPosition => _currentPosition;
  Future setImage() async {
    var pickedFile = await _picker.getImage(source: ImageSource.camera);

    if (pickedFile != null) {
      _gatePictureFile = File(pickedFile.path);
      notifyListeners();
    }
  }

  String get distance => _distance.toStringAsFixed(2) + ' m';

  bool? get isOpen => _isOpen;
  set isOpen(value) {
    _isOpen = value;
    notifyListeners();
  }

  bool get isListening => _positionStream != null && !_positionStream!.isPaused;

  OperationalWidgetModel({required int totalSteps}) {
    this.totalSteps = totalSteps;
  }

  Future<void> handleNext() async {
    var shouldStepup = true;
    if (currentStep == 0 && _isOpen == null) {
      await _dialogeService.showDialog(
          title: 'Error!', description: 'The answer is required.');
      shouldStepup = false;
    }
    if (currentStep == 1 && _gatePictureFile == null) {
      var result = await _dialogeService.showConfirmationDialog(
        title: 'Warning!!',
        description:
            'Do you really want to skip and lose the chance to win ${gatePictureField!.point} points?',
        confirmationTitle: 'Try again',
        cancelTitle: 'Skip Anyway',
      );

      shouldStepup = result != null && !result.confirmed;
    }
    if (currentStep == 2 && _currentPosition == null) {
      var result = await _dialogeService.showConfirmationDialog(
        title: 'Warning!!',
        description:
            'Do you really want to skip and lose the chance to win ${gpsField!.point} points?',
        confirmationTitle: 'Try again',
        cancelTitle: 'Submit Anyway',
      );

      if (result != null && !result.confirmed) {
        await submit();
        shouldStepup = false;
        _navigationService.back();
      }
    }
    if (shouldStepup) {
      try {
        stepUp();
      } on NoStepFoundException {
        print('sbmit now');
        await submit();
        _navigationService.back();
      }
    }
  }

  void handlePrevious() {
    try {
      stepDown();
    } on NoStepFoundException {
      _navigationService.back();
    }
  }

  Future<void> getPosition() async {
    isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    setBusy(true);
    if (isLocationServiceEnabled! &&
        (_positionStream == null || _positionStream!.isPaused)) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission! == LocationPermission.always ||
          locationPermission! == LocationPermission.whileInUse) {
        _positionStream = Geolocator.getPositionStream(
          intervalDuration: Duration(seconds: 3),
          desiredAccuracy: LocationAccuracy.best,
        ).listen(
          (Position position) {
            log.v('got location');
            setBusy(false);
            if (!(_currentPosition is Position) ||
                position.latitude != _currentPosition!.latitude ||
                position.longitude != _currentPosition!.longitude) {
              log.v('location is being set');
              log.v(
                  'Longitude: ${position.longitude}, latitude: ${position.latitude}');
              var distanceInMeters = Geolocator.distanceBetween(
                position.latitude,
                position.longitude,
                _faktory!.geolocation!.latitude,
                _faktory!.geolocation!.longitude,
              );
              _currentPosition = position;
              _distance = distanceInMeters;
              notifyListeners();
            }
          },
        );
      }
    }
  }

  void stopLocationListening() {
    _positionStream!.cancel();
  }

  Future<void> handleModelReady(String faktoryId) async {
    await getOperationalField();
    await getFaktory(faktoryId);
  }

  Future<void> getFaktory(String faktoryId) async {
    _faktory = await _faktoryService.getFactory(faktoryId);
  }

  Future<void> getOperationalField() async {
    var pointTable = await _suggestionService.getPointTable();
    operationalField =
        pointTable.firstWhere((element) => element.field == 'operational');
    notifyListeners();
  }

  PointFieldChild? get isOpenField {
    if (operationalField != null) {
      return operationalField!.children
          .firstWhere((element) => element.field == 'isOpen');
    }
    return null;
  }

  PointFieldChild? get gatePictureField {
    if (operationalField != null) {
      return operationalField!.children
          .firstWhere((element) => element.field == 'gatePictures');
    }
    return null;
  }

  PointFieldChild? get gpsField {
    if (operationalField != null) {
      return operationalField!.children
          .firstWhere((element) => element.field == 'gps');
    }
    return null;
  }

  Future<void> submit() async {
    setBusy(true);
    var children = <SuggestionPayloadChild>[];
    var totalPoints = 0;
    if (_isOpen != null) {
      children.add(SuggestionPayloadChild(
        field: 'isOpen',
        pointsEarned: 0,
        pointsRequested: isOpenField!.point,
        value: _isOpen,
      ));
      totalPoints += isOpenField!.point;
    }
    if (_gatePictureFile != null) {
      var imageUrl = await _suggestionService.uploadGatePicture(
          image: _gatePictureFile!,
          fileName: 'operational-${DateTime.now().toIso8601String()}.jpg');
      children.add(SuggestionPayloadChild(
        field: 'gatePicture',
        pointsEarned: 0,
        pointsRequested: gatePictureField!.point,
        value: imageUrl,
      ));
      totalPoints += gatePictureField!.point;
    }
    if (_currentPosition != null) {
      children.add(SuggestionPayloadChild(
        field: 'gps',
        pointsEarned: 0,
        pointsRequested: gpsField!.point,
        value: {
          'longitude': _currentPosition!.longitude,
          'latitude': _currentPosition!.latitude,
          'distance': _distance,
        },
      ));
      totalPoints += gpsField!.point;
    }
    var suggestion = Suggestion(
        faktoryId: _faktory!.id,
        userId: currentUser.id!,
        submittedAt: DateTime.now(),
        payload: SuggestionPayload(
          field: 'operational',
          children: children,
        ),
        status: SuggestionStatus.submitted);
    await _suggestionService.store(suggestion);
    await _userService.updateTotalPoints(totalPoints, _faktory!.id);
    await _userService.syncUserAccount();
    setBusy(false);
  }

  @override
  void dispose() {
    if (_positionStream != null) {
      stopLocationListening();
      log.v('Stopped listening to location');
    }
    super.dispose();
  }
}
