import '../../../../models/application_models.dart';
import '../../../../services/suggestion_service.dart';
import '../create/suggestion_create_viewmodel.dart';
import 'package:logger/logger.dart';
import 'package:pedantic/pedantic.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../../app/app.logger.dart';
import '../../../../app/app.router.dart';

class SuggestionMenuViewModel extends BaseViewModel {
  late Logger log;
  final _navigationService = locator<NavigationService>();
  final _suggestionService = locator<SuggestionService>();
  List<PointField>? pointTable;

  SuggestionMenuViewModel() {
    log = getLogger(runtimeType.toString());
    unawaited(getPointTable());
    log.v('Loading Point Table');
  }

  void navigateToSuggestionCreate(String faktoryId, String field) {
    unawaited(_navigationService.navigateTo(Routes.suggestionCreateView,
        arguments: SuggestionCreateArgs(faktoryId: faktoryId, field: field)));
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
