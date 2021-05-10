import 'dart:io';

import 'package:pedantic/pedantic.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';
import '../../../generated/l10n.dart';
import '../../../models/application_models.dart';
import '../../../services/user_service.dart';
import '../suggestions/menu/suggestion_menu_viewmodel.dart';

class HomeViewModel extends BaseViewModel {
  final _userService = locator<UserService>();
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  final s = S.current;

  User get currentUser {
    return _userService.currentUser!;
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

  void navigateToSuggestionMenu() {
    unawaited(_navigationService.navigateTo(Routes.suggestionMenuView,
        arguments: SuggestionMenuArgs(faktoryId: currentUser.faktoryId!)));
  }

  void navigateToViewSubmissions() {}
}
