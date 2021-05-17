import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../models/application_models.dart';
import '../../../services/suggestion_service.dart';
import '../../base/authentication_viewmodel.dart';

class SubmissionReportViewModel extends BaseViewModel
    with AuthenticationViewModel {
  final _suggestionService = locator<SuggestionService>();

  var _submissions = <Suggestion>[];

  List<Suggestion> get submissions => _submissions;
  Future<void> loadReport() async {
    _submissions =
        await _suggestionService.getSuggestionsByUserId(currentUser.id);
  }
}
