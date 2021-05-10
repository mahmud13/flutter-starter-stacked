import 'dart:io';

import 'package:crowd_sourcing/api/firestorage_api.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';

import '../api/firestore_api.dart';
import '../app/app.locator.dart';
import '../app/app.logger.dart';
import '../models/application_models.dart';

class SuggestionService {
  final log = getLogger('UserService');

  final _firestoreApi = locator<FirestoreApi>();
  final _firestorageApi = locator<FirestorageApi>();
  final _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  Future<List<PointField>> getPointTable() async {
    return await _firestoreApi.getPointTable();
  }
}
