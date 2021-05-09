import 'dart:io';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../generated/l10n.dart';
import '../../../models/application_models.dart';
import '../../../services/user_service.dart';

class HomeViewModel extends BaseViewModel {
  final _userService = locator<UserService>();
  final _dialogService = locator<DialogService>();

  User get currentUser {
    return _userService.currentUser!;
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
}
