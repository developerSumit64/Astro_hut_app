import 'dart:js_interop';

import 'package:api/allContacts/all_contactsView.dart';
import 'package:api/firstView/firstViewScreen.dart';
import 'package:api/profileVIew/profileView.dart';
import 'package:api/services/courseapi.dart';
import 'package:api/view/coursescreen.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../SpecificCallLogDetails/specificCallLogsDetails.dart';
import '../agentView/aggentView.dart';
import '../callReceiving/call_receiveView.dart';
import '../callerHistoryFromKundli/callerHistoryFromKundli.dart';
import '../callerLogs/callerLogsView.dart';
import '../editProfile/editProfileView.dart';
import '../filterView/filterView.dart';
import '../forgetPassworddView/forgetPasswordView.dart';
import '../kundliView/kundliView.dart';
import '../loginOrRegisterSelecterView/loginOrRegisterView.dart';
import '../loginView/loginView.dart';
import '../newRegisteratoin/newRegisterationview.dart';
import '../profileViewScreen/profileViewScreenView.dart';
import '../services/loginApi.dart';
import '../showHistory/showHistoryView.dart';

import '../signup/signUpView.dart';
import '../updateList/updateListView.dart';

// import '../agentView/agentView.dart';


@StackedApp(
  routes: [
    // MaterialRoute(page: CourseScreen,initial: true),
    MaterialRoute(page: FirstViewScreen),
    // MaterialRoute(page: AllContactsView,initial: true),

    MaterialRoute(page: AgentView,initial:false),
    MaterialRoute(page: CallerLogsView,initial: false),
    MaterialRoute(page: SignUpView,initial: false),
    MaterialRoute(page: LoginView,initial: false),
    MaterialRoute(page: LoginOrRegisterView,initial: true),
    MaterialRoute(page: ProfileView,initial: false),
    MaterialRoute(page: ForgetPassword,initial: false),
    MaterialRoute(page: CallLogDetailView,initial: false),
    MaterialRoute(page: UpdateListAgent,initial: false),
    MaterialRoute(page: ProfileSettings,initial: false),
    MaterialRoute(page: ProfileEditApp,initial: false),
    MaterialRoute(page: CallReceiveView,initial: false),
    MaterialRoute(page: Registration,initial: false),
    MaterialRoute(page: AllContactsView,initial: false),

    MaterialRoute(page: KundliView,initial: false),
    MaterialRoute(page: CallerHistoryViewKundli,initial: false),
    MaterialRoute(page: ShowHistoryView,initial: false),
    MaterialRoute(page: FilterDialogView,initial: false),







  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    // LazySingleton(classType: CourseApi),
    LazySingleton(classType: CourseApi),
    LazySingleton(classType: LoginApi)
  ],
)
class AppSetup {

}
