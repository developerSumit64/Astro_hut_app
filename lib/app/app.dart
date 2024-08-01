import 'package:api/firstView/firstViewScreen.dart';
import 'package:api/services/courseapi.dart';
import 'package:api/view/coursescreen.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';


@StackedApp(
  routes: [
    // MaterialRoute(page: CourseScreen,initial: true),
    MaterialRoute(page: FirstViewScreen,initial: true),

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
