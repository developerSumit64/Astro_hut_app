import 'package:api/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

class LoginViewModel extends BaseViewModel{
  final NavigationService _navigationService = locator<NavigationService>();
  void navigateToFirstView() async{
    await _navigationService.navigateToFirstViewScreen();
  }
  void navigateToForgget() async{
    await _navigationService.navigateToForgetPassword();
  }


}