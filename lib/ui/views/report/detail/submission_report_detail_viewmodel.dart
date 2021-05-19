import 'package:crowd_sourcing/ui/base/authentication_viewmodel.dart';
import 'package:stacked/stacked.dart';

import '../../../../app/app.locator.dart';
import '../../../../models/application_models.dart';
import '../../../../services/suggestion_service.dart';

class SubmissionReportDetailViewModel extends BaseViewModel
    with AuthenticationViewModel {
  final _suggestionService = locator<SuggestionService>();
  late Suggestion _suggestion;
  late PointField _pointField;

  Suggestion get suggestion => _suggestion;
  PointField get pointField => _pointField;

  UserFaktory get faktory {
    return currentUser.faktories
        .firstWhere((element) => element.id == _suggestion.faktoryId);
  }

  Future<void> loadSuggestion(String id) async {
    setBusy(true);
    _suggestion = await _suggestionService.getSuggestion(id);
    _pointField =
        await _suggestionService.getPointField(_suggestion.payload.field);
    setBusy(false);
  }

  PointFieldChild getChildField(SuggestionPayloadChild child) {
    return _pointField.children
        .firstWhere((element) => element.field == child.field);
  }

  dynamic getChildValue(SuggestionPayloadChild child) {
    var type = getChildField(child).type;
    switch (type) {
      case PointFieldChildType.boolean:
        return child.value.toString();
      case PointFieldChildType.text:
        return child.value;
      case PointFieldChildType.image:
        return child.value;
      case PointFieldChildType.gps:
        return GpsField.fromJson(child.value);
    }
  }
}

class SubmissiontionDetailArgs {
  String id;
  SubmissiontionDetailArgs(this.id);
}
