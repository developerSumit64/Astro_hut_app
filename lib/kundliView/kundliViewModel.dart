import 'package:api/app/app.locator.dart';
import 'package:api/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class KundliViewModel extends BaseViewModel{
  final NavigationService _navigationService = locator<NavigationService>();

  void NavigateTOFilterView() async {
    await _navigationService.navigateToFilterDialog();
  }
  void NavigateTOAllCaller() async {
    await _navigationService.navigateToAllContactsView();
  }
  void NavigateTODashboard() async {
    await _navigationService.navigateToFirstViewScreen();
  }
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
  }void navigateToKundliView() async{
    await _navigationService.navigateToKundliView();
  }
  void navigateToCallerDetailsSpecific() async{
    await _navigationService.navigateToCallLogDetailView();
  }
}