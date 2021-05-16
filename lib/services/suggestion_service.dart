import '../api/firestore_api.dart';
import '../app/app.locator.dart';
import '../app/app.logger.dart';
import '../models/application_models.dart';

class SuggestionService {
  final log = getLogger('UserService');

  final _firestoreApi = locator<FirestoreApi>();

  Future<List<PointField>> getPointTable() async {
    return await _firestoreApi.getPointTable();
  }

  Future<void> store(Suggestion suggestion) async {
    await _firestoreApi.storeSuggestion(suggestion);
  }
}
