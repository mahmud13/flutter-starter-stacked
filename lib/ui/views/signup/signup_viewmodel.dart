import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:crowd_sourcing/models/application_models.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/services.dart';
import 'package:pedantic/pedantic.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';
import '../../../generated/l10n.dart';
import '../../../services/user_service.dart';
import '../../../ui/base/custom_form_view_model.dart';

class SignupViewModel extends CustomFormViewModel {
  final _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();
  final _userService = locator<UserService>();
  final _snackbarService = locator<SnackbarService>();

  User? _user;
  var _currentStep = 0;
  final totalSteps;

  SignupViewModel({this.totalSteps});

  var isPasswordVisible = false;

  @override
  void setFormStatus() {}

  int get currentStep => _currentStep;
  void stepUp() {
    if (_currentStep < totalSteps) {
      _currentStep++;
      notifyListeners();
    }
  }

  void stepDown() {
    if (_currentStep > 0) {
      _currentStep--;
      notifyListeners();
    }
  }

  void changeLocale() {
    S.load(Locale('bn', 'BD'));
    notifyListeners();
  }

  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }

  void setPersonalInfo(Map<String, dynamic> info) {
    _user = User.fromJson(info);
  }

  void setFaktoryId(String factoryId) {
    _user = _user!.copyWith(faktoryId: factoryId);
  }

  Future<bool> handleBack() async {
    var result = await _dialogService.showConfirmationDialog(
      title: S.current.areYouSure,
      description: S.current.yourInformationWillBeLost,
      confirmationTitle: S.current.ok,
      cancelTitle: S.current.cancel,
    );
    if (result!.confirmed) {
      _navigationService.back();
    }
    return false;
  }

  void navigateToHome() => _navigationService.navigateTo(Routes.homeView);

  void navigateToLogin() => _navigationService.navigateTo(Routes.loginView);

  Future register() async {
    FirebaseAuthenticationResult? result;
    try {
      result = await _firebaseAuthenticationService.createAccountWithEmail(
          email: _user!.email!, password: _user!.password!);
      if (result.user != null) {
        _user = _user!.copyWith(id: result.user!.uid);
        await _userService.syncOrCreateUserAccount(user: _user!);
      }
    } on firebase_auth.FirebaseAuthException catch (e) {
      _snackbarService.showSnackbar(message: e.message!);
    } on PlatformException catch (e) {
      _snackbarService.showSnackbar(message: e.message!);
    }
    // TODO: exception not working
    if (result!.hasError) {
      _snackbarService.showSnackbar(message: result.errorMessage!);
    }
  }

  Future<void> handlePhotoSubmit(File image) async {
    await register();
    unawaited(uploadProPic(image));
    navigateToHome();

    _snackbarService.showSnackbar(message: "You're successfully registered!");
  }

  Future<void> uploadProPic(File image) async {
    if (_user?.id != null) {
      await _userService.uploadProPic(
          userId: _user?.id, image: image, fileName: _user!.id! + '.jpg');
    }
  }
}
