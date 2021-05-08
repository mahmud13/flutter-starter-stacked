import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import '../app/app.logger.dart';

class FirestorageApi {
  final log = getLogger('FirestoreApi');

  Future<UploadTask> uploadFile(
      File file, String fileName, String filePath) async {
    var ref = FirebaseStorage.instance.ref().child(filePath).child(fileName);
    final metadata =
        SettableMetadata(contentType: 'image/jpeg', customMetadata: {
      'picked-file-path': file.path,
    });
    var uploadTask = ref.putFile(file, metadata);
    return uploadTask;
  }
}
