import 'package:crowd_sourcing/api/firestorage_api.dart';
import 'package:crowd_sourcing/services/factory_service.dart';
import 'package:crowd_sourcing/services/suggestion_service.dart';
import 'package:crowd_sourcing/ui/views/suggestions/create/suggestion_create_view.dart';
import 'package:crowd_sourcing/ui/views/suggestions/menu/suggestion_menu_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

import '../api/firestore_api.dart';
import '../services/user_service.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/login/login_view.dart';
import '../ui/views/signup/signup_view.dart';
import '../ui/views/startup/startup_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartUpView, initial: true),
    CupertinoRoute(page: LoginView),
    CupertinoRoute(page: SignupView),
    CupertinoRoute(page: HomeView),
    CupertinoRoute(page: SuggestionMenuView),
    CupertinoRoute(page: SuggestionCreateView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: UserService),
    LazySingleton(classType: FactoryService),
    LazySingleton(classType: SuggestionService),
    LazySingleton(classType: FirestoreApi),
    LazySingleton(classType: FirestorageApi),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    Singleton(classType: FirebaseAuthenticationService),
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
