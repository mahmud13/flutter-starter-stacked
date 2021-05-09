import 'package:crowd_sourcing/models/application_models.dart';
import 'package:crowd_sourcing/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../app/app.locator.dart';
import '../../app/app.router.dart';

class BaseLayoutModel extends BaseViewModel {
  final _userService = locator<UserService>();
  final _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();
  final _navigationService = locator<NavigationService>();

  User? get currentUser => _userService.currentUser;

  void handleMenuItemClick(String value) {
    switch (value) {
      case 'Profile':
        break;
      case 'Logout':
        signOut();
        break;
    }
  }

  void signOut() {
    _firebaseAuthenticationService.logout();
    _navigationService.navigateTo(Routes.loginView);
  }
}
