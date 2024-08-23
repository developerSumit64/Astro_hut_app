import 'package:api/app/app.locator.dart';
import 'package:api/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';


class LoginOrRegisterViewModel extends BaseViewModel{

  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToLogin() async{
   await _navigationService.navigateToLoginView();
  }
  void navigateToRegister() async{
   await _navigationService.navigateToSignUpView();
  }

}