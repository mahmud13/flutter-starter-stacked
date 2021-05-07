import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';
import '../../../generated/l10n.dart';
import '../../../services/user_service.dart';
import '../../../ui/base/custom_form_view_model.dart';
import 'login_view.form.dart';

class LoginViewModel extends CustomFormViewModel {
  final _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();
  final _userService = locator<UserService>();

  var isPasswordVisible = false;

  @override
  void setFormStatus() {}

  Future<FirebaseAuthenticationResult> runAuthentication() =>
      _firebaseAuthenticationService.loginWithEmail(
        email: emailValue!,
        password: passwordValue!,
      );

  void changeLocale() {
    S.load(Locale('bn', 'BD'));
    notifyListeners();
  }

  Future login() async {
    setBusy(true);

    var result = await _firebaseAuthenticationService.loginWithEmail(
      email: emailValue!,
      password: passwordValue!,
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
      title: S.current.doYouWantToExit,
      confirmationTitle: S.current.ok,
      cancelTitle: S.current.cancel,
    );
    if (result!.confirmed) {
      exit(0);
    }
    return false;
  }

  void navigateToHome() => _navigationService.navigateTo(Routes.homeView);
  void navigateToSignup() => _navigationService.navigateTo(Routes.signupView);
}
