import 'package:stacked/stacked.dart';

import '../../app/app.locator.dart';
import '../../models/application_models.dart';
import '../../services/user_service.dart';

mixin AuthenticationViewModel on BaseViewModel {
  var userService = locator<UserService>();

  User get currentUser => userService.currentUser!;
}
