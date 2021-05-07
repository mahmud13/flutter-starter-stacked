import 'dart:async';
import 'dart:ui';

import 'package:flutter_starter/models/application_models.dart';
import 'package:flutter_starter/ui/views/signup/personal_info/personal_info_widgetmodel.dart';
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

  void setPersonalInfo(PersonalInfo info) {
    print(info);
  }

  Future<bool> handleBack() async {
    var result = await _dialogService.showConfirmationDialog(
      title: S.current.doYouWantToExit,
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
}
