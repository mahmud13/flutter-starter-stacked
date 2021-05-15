import 'dart:async';
import 'dart:io';

import 'package:crowd_sourcing/models/application_models.dart';
import 'package:crowd_sourcing/services/faktory_service.dart';
import 'package:crowd_sourcing/ui/base/stepper_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../../app/app.locator.dart';
import '../../../../../app/app.logger.dart';
import '../../../../../models/application_models.dart';
import '../../../../../services/suggestion_service.dart';

class OperationalWidgetModel extends BaseViewModel with StepperViewModel {
  final _navigationService = locator<NavigationService>();
  final _suggestionService = locator<SuggestionService>();
  final _faktoryService = locator<FaktoryService>();
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

  void handleNext() {
    try {
      stepUp();
    } on NoStepFoundException {
      print('sbmit now');
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
    if (isLocationServiceEnabled!) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission! == LocationPermission.always ||
          locationPermission! == LocationPermission.whileInUse) {
        _positionStream = Geolocator.getPositionStream(
          intervalDuration: Duration(seconds: 3),
          desiredAccuracy: LocationAccuracy.best,
        ).listen(
          (Position position) {
            log.v('got location');
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

  @override
  void dispose() {
    if (_positionStream != null) {
      stopLocationListening();
      log.v('Stopped listening to location');
    }
    super.dispose();
  }
}
