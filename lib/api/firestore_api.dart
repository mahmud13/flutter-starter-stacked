import 'package:cloud_firestore/cloud_firestore.dart';

import '../app/app.logger.dart';
import '../exceptions/firestore_api_exception.dart';
import '../models/application_models.dart';

class FirestoreApi {
  final log = getLogger('FirestoreApi');

  final CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('users');

  final CollectionReference factoriesCollection =
      FirebaseFirestore.instance.collection('factories');

  Future<void> createUser({required User user}) async {
    log.i('user:$user');

    try {
      final userDocument = usersCollection.doc(user.id);
      await userDocument.set(user.toJson());
      log.v('UserCreated at ${userDocument.path}');
    } catch (error) {
      throw FirestoreApiException(
        message: 'Failed to create new user',
        devDetails: '$error',
      );
    }
  }

  Future<User?> getUser({required String userId}) async {
    log.i('userId:$userId');

    if (userId.isNotEmpty) {
      final userDoc = await usersCollection.doc(userId).get();
      if (!userDoc.exists) {
        log.v('We have no user with id $userId in our database');
        return null;
      }

      final userData = userDoc.data();
      log.v('User found. Data: $userData');

      return User.fromJson(userData!);
    } else {
      throw FirestoreApiException(
          message:
              'Your userId passed in is empty. Please pass in a valid user if from your Firebase user.');
    }
  }

  Future setProPic(String? userId, String imageUrl) async {
    await usersCollection.doc(userId).set({'imageUrl': imageUrl});
  }

  Future<List<Factory>> getFactoriesByRegion(String region) async {
    var snapshot = await factoriesCollection
        .where('address_district', isEqualTo: region)
        .get();
    return snapshot.size > 0
        ? snapshot.docs.map((doc) => Factory.fromJson(doc.data())).toList()
        : [];
  }

  Future<Factory?> getFactory(String id) async {
    var doc = await factoriesCollection.doc(id).get();
    return doc.exists ? Factory.fromJson(doc.data()!) : null;
  }
}
