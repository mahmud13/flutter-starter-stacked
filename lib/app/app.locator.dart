// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:stacked/stacked.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

import '../api/firestorage_api.dart';
import '../api/firestore_api.dart';
import '../services/factory_service.dart';
import '../services/suggestion_service.dart';
import '../services/user_service.dart';

final locator = StackedLocator.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => UserService());
  locator.registerLazySingleton(() => FactoryService());
  locator.registerLazySingleton(() => SuggestionService());
  locator.registerLazySingleton(() => FirestoreApi());
  locator.registerLazySingleton(() => FirestorageApi());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => SnackbarService());
  locator.registerSingleton(FirebaseAuthenticationService());
}
