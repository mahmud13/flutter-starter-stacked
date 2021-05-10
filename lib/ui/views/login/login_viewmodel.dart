import 'dart:async';
import 'dart:io';

import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';
import '../../../generated/l10n.dart';
import '../../../services/user_service.dart';
import '../../../ui/base/custom_form_view_model.dart';

class LoginViewModel extends CustomFormViewModel {
  final _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();
  final _userService = locator<UserService>();
  var s = S.current;

  var isPasswordVisible = false;

  @override
  void setFormStatus() {}

  Future login(String email, String password) async {
    setBusy(true);

    var result = await _firebaseAuthenticationService.loginWithEmail(
      email: email,
      password: password,
    );
    await _userService.syncUserAccount();
    setBusy(false);

    if (result.hasError) {
      setValidationMessage(result.errorMessage);
    } else {
      setValidationMessage(null);
      navigateToHome();
    }
  }

  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }

  Future<bool> handleBack() async {
    var result = await _dialogService.showConfirmationDialog(
      title: s.doYouWantToExit,
      confirmationTitle: s.ok,
      cancelTitle: s.cancel,
    );
    if (result!.confirmed) {
      exit(0);
    }
    return false;
  }

  void navigateToHome() => _navigationService.navigateTo(Routes.homeView);
  void navigateToSignup() => _navigationService.navigateTo(Routes.signupView);
}
