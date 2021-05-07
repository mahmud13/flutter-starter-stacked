import 'dart:io';

import 'package:flutter_starter/models/application_models.dart';
import 'package:flutter_starter/services/user_service.dart';
import 'package:flutter_starter/generated/l10n.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';

class HomeViewModel extends BaseViewModel {
  final _userService = locator<UserService>();
  final _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();

  User get currentUser {
    return _userService.currentUser;
  }

  void handleMenuItemClick(String value) {
    switch (value) {
      case 'Profile':
        break;
      case 'Logout':
        signOut();
        break;
    }
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

  void signOut() {
    _firebaseAuthenticationService.logout();
    _navigationService.navigateTo(Routes.loginView);
  }
}
