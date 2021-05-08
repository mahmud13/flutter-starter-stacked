import 'dart:io';

import 'package:crowd_sourcing/api/firestorage_api.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';

import '../api/firestore_api.dart';
import '../app/app.locator.dart';
import '../app/app.logger.dart';
import '../models/application_models.dart';

class UserService {
  final log = getLogger('UserService');

  final _firestoreApi = locator<FirestoreApi>();
  final _firestorageApi = locator<FirestorageApi>();
  final _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  User? _currentUser;

  User? get currentUser => _currentUser;

  bool get hasLoggedInUser => _firebaseAuthenticationService.hasUser;

  Future<void> syncUserAccount() async {
    final firebaseUserId =
        _firebaseAuthenticationService.firebaseAuth.currentUser!.uid;

    log.v('Sync user $firebaseUserId');

    final userAccount = await _firestoreApi.getUser(userId: firebaseUserId);

    if (userAccount != null) {
      log.v('User account exists. Save as _currentUser');
      _currentUser = userAccount;
    }
  }

  Future<void> syncOrCreateUserAccount({required User user}) async {
    log.i('user:$user');

    await syncUserAccount();

    if (_currentUser == null) {
      log.v('We have no user account. Create a new user ...');
      await _firestoreApi.createUser(user: user);
      _currentUser = user;
      log.v('_currentUser has been saved');
    }
  }

  Future<String> uploadProPic(
      {required File image,
      required String? userId,
      required String fileName}) async {
    var task = await _firestorageApi.uploadFile(image, '/profile', fileName);
    var imageUrl = await task.snapshot.ref.getDownloadURL();
    await _firestoreApi.setProPic(userId, imageUrl);
    return imageUrl;
  }
}
