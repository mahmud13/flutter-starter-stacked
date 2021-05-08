import 'package:crowd_sourcing/models/application_models.dart';
import 'package:crowd_sourcing/services/user_service.dart';
import 'package:stacked/stacked.dart';
import '../../app/app.locator.dart';

class BaseLayoutModel extends BaseViewModel {
  final _userService = locator<UserService>();

  User? get currentUser => _userService.currentUser;

  void handleMenuItemClick(String item) {
//
  }
}
