// import 'package:api/allContacts/all_contactsView.dart';
import 'package:api/firstView/firstViewScreen.dart';
import 'package:api/profileVIew/profileView.dart';
import 'package:api/services/courseapi.dart';
// import 'package:api/view/coursescreen.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../agentView/aggentView.dart';
import '../allContacts/all_contactsView.dart';
import '../callerLogs/callerLogsView.dart';
import '../loginOrRegisterSelecterView/loginOrRegisterView.dart';
import '../forgetPassworddView/forgetPasswordView.dart';
import '../loginOrRegisterSelecterView/loginOrRegisterView.dart';
import '../loginView/loginView.dart';
import '../signUpView.dart';
import '../view/coursescreen.dart';

// import '../agentView/agentView.dart';


@StackedApp(
  routes: [
    MaterialRoute(page: CourseScreen,initial: true),
    MaterialRoute(page: FirstViewScreen),
    MaterialRoute(page: AllContactsView,initial: true),

    MaterialRoute(page: AgentView,initial:false),
    MaterialRoute(page: CallerLogsView,initial: false),
    MaterialRoute(page: SingUpView,initial: false),
    MaterialRoute(page: LoginView,initial: false),
    MaterialRoute(page: LoginOrRegisterView,initial: false),
    MaterialRoute(page: ProfileView,initial: true),
    MaterialRoute(page: LoginView,initial: false),
    MaterialRoute(page: LoginOrRegisterView,initial: false),
    MaterialRoute(page: ProfileView,initial: false),
    MaterialRoute(page: ForgetPassword,initial: true),




  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    // LazySingleton(classType: CourseApi),
    LazySingleton(classType: CourseApi)
  ],
)
class AppSetup {

}
