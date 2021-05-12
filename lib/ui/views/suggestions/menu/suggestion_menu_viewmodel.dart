import 'package:logger/logger.dart';
import 'package:pedantic/pedantic.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/app.locator.dart';
import '../../../../app/app.logger.dart';
import '../../../../app/app.router.dart';
import '../../../../models/application_models.dart';
import '../../../../services/suggestion_service.dart';
import '../../../../services/user_service.dart';
import '../create/suggestion_create_viewmodel.dart';

class SuggestionMenuViewModel extends BaseViewModel {
  late Logger log;
  final _navigationService = locator<NavigationService>();
  final _suggestionService = locator<SuggestionService>();
  final _userService = locator<UserService>();
  UserFaktory? selectedFaktory;
  List<PointField>? pointTable;

  User get currentUser => _userService.currentUser!;

  void setFaktory(UserFaktory faktory) {
    selectedFaktory = faktory;
    notifyListeners();
  }

  SuggestionMenuViewModel() {
    log = getLogger(runtimeType.toString());
    unawaited(getPointTable());
    log.v('Loading Point Table');
  }

  void navigateToSuggestionCreate(String field) {
    unawaited(_navigationService.navigateTo(Routes.suggestionCreateView,
        arguments: SuggestionCreateArgs(
            faktoryId: selectedFaktory!.id, field: field)));
  }

  Future<void> getPointTable() async {
    try {
      pointTable = await _suggestionService.getPointTable();
      notifyListeners();
    } catch (e) {
      pointTable = [];
      log.e(e);
      notifyListeners();
    }
  }
}

class SuggestionMenuArgs {
  String faktoryId;
  SuggestionMenuArgs({required this.faktoryId});
}
