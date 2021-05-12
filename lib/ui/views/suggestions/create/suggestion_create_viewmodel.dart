import 'package:stacked/stacked.dart';

import '../../../../app/app.locator.dart';
import '../../../../models/application_models.dart';
import '../../../../services/user_service.dart';

class SuggestionCreateViewModel extends BaseViewModel {
  final _userService = locator<UserService>();

  User get currentUser => _userService.currentUser!;
  UserFaktory getFaktory(String faktoryId) =>
      currentUser.faktories.firstWhere((faktory) => faktory.id == faktoryId);
}

class SuggestionCreateArgs {
  String faktoryId;
  String field;
  SuggestionCreateArgs({required this.faktoryId, required this.field});
}
