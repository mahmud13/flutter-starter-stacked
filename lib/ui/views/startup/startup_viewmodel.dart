import 'package:customer/app/app.locator.dart';
import 'package:customer/app/app.logger.dart';
import 'package:customer/app/app.router.dart';
import 'package:customer/services/user_service.dart';
import 'package:pedantic/pedantic.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartUpViewModel extends BaseViewModel {
  final log = getLogger('StartUpViewModel');
  final _userService = locator<UserService>();
  final _navigationService = locator<NavigationService>();

  Future<void> runStartupLogic() async {
    if (_userService.hasLoggedInUser) {
      log.v('We have a user session on disk. Sync the user profile ...');
      await _userService.syncUserAccount();

      final currentUser = _userService.currentUser;
      log.v('User sync complete. User profile: $currentUser');

      if (!currentUser.hasAddress) {
        await _navigationService.navigateTo(Routes.addressSelectionView);
      } else {
        // navigate to home view
      }
    } else {
      log.v('No user on disk, navigate to the LoginView');
      unawaited(_navigationService.replaceWith(Routes.loginView));
    }
  }
}
