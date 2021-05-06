import 'package:customer/api/firestore_api.dart';
import 'package:customer/services/user_service.dart';
import 'package:customer/ui/views/address_selection/address_selection_view.dart';
import 'package:customer/ui/views/create_account/create_account_view.dart';
import 'package:customer/ui/views/home/home_view.dart';
import 'package:customer/ui/views/login/login_view.dart';
import 'package:customer/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartUpView, initial: true),
    CupertinoRoute(page: AddressSelectionView),
    CupertinoRoute(page: CreateAccountView),
    CupertinoRoute(page: LoginView),
    CupertinoRoute(page: HomeView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: UserService),
    LazySingleton(classType: FirestoreApi),
    LazySingleton(classType: DialogService),
    Singleton(classType: FirebaseAuthenticationService),
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
