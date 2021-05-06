import 'dart:async';
import 'dart:ui';

import 'package:flutter_starter/generated/l10n.dart';
import 'package:flutter_starter/app/app.locator.dart';
import 'package:flutter_starter/app/app.router.dart';
import 'package:pedantic/pedantic.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

import 'login_view.form.dart';

class LoginViewModel extends FormViewModel {
  final _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();
  final _navigationService = locator<NavigationService>();

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

    setBusy(false);

    if (result.hasError) {
      setValidationMessage(result.errorMessage);
    } else {
      setValidationMessage(null);
      unawaited(_navigationService.navigateTo(Routes.homeView));
    }
  }

  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }

  void navigateToCreateAccount() =>
      _navigationService.navigateTo(Routes.createAccountView);
}
