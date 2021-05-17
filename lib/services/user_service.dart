import 'dart:io';

import 'package:stacked/stacked.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';

import '../api/firestorage_api.dart';
import '../api/firestore_api.dart';
import '../app/app.locator.dart';
import '../app/app.logger.dart';
import '../models/application_models.dart';

class UserService with ReactiveServiceMixin {
  final log = getLogger('UserService');

  final _firestoreApi = locator<FirestoreApi>();
  final _firestorageApi = locator<FirestorageApi>();
  final _firebaseAuthenticationService =
      locator<FirebaseAuthenticationService>();

  final _currentUser = ReactiveValue<User?>(null);

  User? get currentUser => _currentUser.value;

  bool get hasLoggedInUser => _firebaseAuthenticationService.hasUser;

  UserService() {
    listenToReactiveValues([_currentUser]);
  }
  Future<void> syncUserAccount() async {
    final firebaseUserId =
        _firebaseAuthenticationService.firebaseAuth.currentUser!.uid;

    log.v('Sync user $firebaseUserId');

    var userAccount = await _firestoreApi.getUser(userId: firebaseUserId);

    if (userAccount != null) {
      log.v('User account exists. Save as _currentUser');
      _currentUser.value = userAccount;
    }
  }

  Future<void> syncOrCreateUserAccount({required User user}) async {
    log.i('user:$user');

    await syncUserAccount();

    if (_currentUser.value == null) {
      log.v('We have no user account. Create a new user ...');
      await _firestoreApi.createUser(user: user);

      _currentUser.value = user;
      log.v('_currentUser has been saved');
    }
  }

  Future<void> uploadProPic(
      {required File image,
      required String? userId,
      required String fileName}) async {
    var task = await _firestorageApi.uploadFile(
        file: image, filePath: '/profile', fileName: fileName);
    await task.whenComplete(() async {
      var imageUrl = await task.snapshot.ref.getDownloadURL();
      await _firestoreApi.setProPic(userId, imageUrl);
    });
  }

  Future<void> updateTotalPoints(
      int totalPointsRequested, String faktoryId) async {
    var faktories = currentUser!.faktories.map((faktory) {
      if (faktory.id == faktoryId) {
        return faktory.copyWith(
            totalPointsRequested:
                faktory.totalPointsRequested + totalPointsRequested);
      }
      return faktory;
    }).toList();
    _currentUser.value = _currentUser.value!.copyWith(
      totalPointsRequested:
          currentUser!.totalPointsRequested + totalPointsRequested,
      faktories: faktories,
    );
    await _firestoreApi.updateTotalPoints(_currentUser.value!);
  }
}
