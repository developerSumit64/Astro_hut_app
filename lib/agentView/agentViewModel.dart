import 'package:api/app/app.locator.dart';
import 'package:api/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AgentViewModel extends BaseViewModel{
  final NavigationService _navigationService = locator<NavigationService>();

  void NavigateToUpadteLIstAgent() async {
    await _navigationService.navigateToUpdateListAgent();
  }
  void NavigateTOAllCaller() async {
    await _navigationService.navigateToAllContactsView();
  }
  // void NavigateTODashboard() async {
  //   await _navigationService.navigateToFirstViewScreen();
  // }
  void navigateToRegisterNewUser() async{
    await _navigationService.navigateToRegistration();
  }
  // void navigateToAllContacts() async{
  //   await _navigationService.navigateToAllContactsView();
  // }
  void navigateToCallReceiving() async{
    await _navigationService.navigateToCallReceiveView();
  }
  void navigateToAgentView() async{
    await _navigationService.navigateToAgentView();
  }
}