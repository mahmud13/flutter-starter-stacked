import 'package:crowd_sourcing/ui/views/report/submission_report_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

import '../api/firestorage_api.dart';
import '../api/firestore_api.dart';
import '../services/faktory_service.dart';
import '../services/suggestion_service.dart';
import '../services/user_service.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/login/login_view.dart';
import '../ui/views/signup/signup_view.dart';
import '../ui/views/startup/startup_view.dart';
import '../ui/views/suggestions/create/suggestion_create_view.dart';
import '../ui/views/suggestions/menu/suggestion_menu_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartUpView, initial: true),
    CupertinoRoute(page: LoginView),
    CupertinoRoute(page: SignupView),
    CupertinoRoute(page: HomeView),
    CupertinoRoute(page: SuggestionMenuView),
    CupertinoRoute(page: SuggestionCreateView),
    CupertinoRoute(page: SubmissionReportView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: UserService),
    LazySingleton(classType: FaktoryService),
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
