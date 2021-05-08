import '../api/firestore_api.dart';
import '../app/app.locator.dart';
import '../app/app.logger.dart';
import '../models/application_models.dart';

class FactoryService {
  final log = getLogger('UserService');

  final _firestoreApi = locator<FirestoreApi>();

  Future<List<Factory>> getFactoriesByRegion(String region) async =>
      _firestoreApi.getFactoriesByRegion(region);

  Future<Factory?> getFactory(String id) {
    return _firestoreApi.getFactory(id);
  }
}
