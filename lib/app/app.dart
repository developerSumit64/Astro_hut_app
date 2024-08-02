import 'package:api/allContacts/all_contactsView.dart';
import 'package:api/firstView/firstViewScreen.dart';
import 'package:api/services/courseapi.dart';
import 'package:api/view/coursescreen.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

// import '../agentView/agentView.dart';


@StackedApp(
  routes: [
    // MaterialRoute(page: CourseScreen,initial: true),
    MaterialRoute(page: FirstViewScreen),
    MaterialRoute(page: AllContactsView,initial: true),

    // MaterialRoute(page: AgentView,initial: false),



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
