import 'dart:io';

import '../api/firestorage_api.dart';
import '../api/firestore_api.dart';
import '../app/app.locator.dart';
import '../app/app.logger.dart';
import '../models/application_models.dart';

class SuggestionService {
  final log = getLogger('UserService');

  final _firestoreApi = locator<FirestoreApi>();
  final _firestorageApi = locator<FirestorageApi>();

  Future<List<PointField>> getPointTable() async {
    return await _firestoreApi.getPointTable();
  }

  Future<void> store(Suggestion suggestion) async {
    await _firestoreApi.storeSuggestion(suggestion);
  }

  Future<List<Suggestion>> getSuggestionsByUserId(String? id) async {
    return await _firestoreApi.getSuggestionsByUserId(id);
  }

  Future<String> uploadGatePicture(
      {required File image, required String fileName}) async {
    var task = await _firestorageApi.uploadFile(
        file: image, filePath: '/gate-pictures', fileName: fileName);
    await task;
    var imageUrl = await task.snapshot.ref.getDownloadURL();
    return imageUrl;
  }
}
