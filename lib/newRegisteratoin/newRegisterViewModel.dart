import 'package:api/app/app.locator.dart';
import 'package:api/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class NewRegisterViewModel extends BaseViewModel{
  final NavigationService _navigationService = locator<NavigationService>();

  void NavigateTOFilterView() async {
    await _navigationService.navigateToFilterDialogView();
  }
}