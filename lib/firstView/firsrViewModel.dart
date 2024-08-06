import 'package:api/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

class FirstViewModel extends BaseViewModel{
  final NavigationService _navigationService = locator<NavigationService>();
  void navigateToAgentView() async{
    await _navigationService.navigateToAgentView();
  }
  void navigateToCallLogs() async{
    await _navigationService.navigateToCallerLogsView();
  }
}