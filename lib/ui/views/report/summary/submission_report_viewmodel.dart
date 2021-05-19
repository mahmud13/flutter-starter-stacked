import 'package:crowd_sourcing/ui/views/report/detail/submission_report_detail_viewmodel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../app/app.locator.dart';
import '../../../../app/app.router.dart';
import '../../../../models/application_models.dart';
import '../../../../services/suggestion_service.dart';
import '../../../base/authentication_viewmodel.dart';

class SubmissionReportViewModel extends BaseViewModel
    with AuthenticationViewModel {
  final _suggestionService = locator<SuggestionService>();
  final _navigationService = locator<NavigationService>();

  var _submissions = <Suggestion>[];

  List<Suggestion> get submissions => _submissions;
  Future<void> loadReport() async {
    _submissions =
        await _suggestionService.getSuggestionsByUserId(currentUser.id);
    notifyListeners();
  }

  Future<void> navigateToDetail(String id) async {
    await _navigationService.navigateTo(Routes.submissionReportDetailView,
        arguments: SubmissiontionDetailArgs(id));
  }
}
