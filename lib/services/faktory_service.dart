import '../api/firestore_api.dart';
import '../app/app.locator.dart';
import '../app/app.logger.dart';
import '../models/application_models.dart';

class FaktoryService {
  final log = getLogger('UserService');

  final _firestoreApi = locator<FirestoreApi>();

  Future<List<Faktory>> getFactoriesByRegion(String region) async =>
      _firestoreApi.getFactoriesByRegion(region);

  Future<Faktory?> getFactory(String id) {
    return _firestoreApi.getFactory(id);
  }
}