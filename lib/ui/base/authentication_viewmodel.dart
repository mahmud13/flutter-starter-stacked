import 'package:crowd_sourcing/models/application_models.dart';
import 'package:crowd_sourcing/services/user_service.dart';
import 'package:stacked/stacked.dart';
import '../../app/app.locator.dart';

mixin AuthenticationViewModel on BaseViewModel {
  var userService = locator<UserService>();

  User get currentUser => userService.currentUser!;
}
