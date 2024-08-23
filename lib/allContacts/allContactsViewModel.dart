import 'package:api/app/app.locator.dart';
import 'package:api/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AllContactsViewModal extends BaseViewModel{
  final NavigationService _navigationService = locator<NavigationService>();
  //
  void NavigateTOFilterView() async {
    await _navigationService.navigateToFilterDialogView();
  }
  void NavigateTOAllCaller() async {
    await _navigationService.navigateToAllContactsView();
  }
  void NavigateTODashboard() async {
    // final Shared
    await _navigationService.navigateToFirstViewScreen( loginModel:  );
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
}