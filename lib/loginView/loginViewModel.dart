import 'package:api/app/app.router.dart';
import 'package:api/models/loginModel.dart';
import 'package:api/services/loginApi.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

class LoginViewModel extends BaseViewModel{
  final NavigationService _navigationService = locator<NavigationService>();

  LoginModel? loginModel;


  Future<LoginModel?> getLoginDetails(String? emailId, String? mobile,  String? password) async{

    setBusy(true);
    try {
      loginModel = await locator<LoginApi>().getLogin(emailId, mobile, password);
    }catch(e){
      print("Error in exception ${e.toString()}");
    }
    notifyListeners();
    setBusy(false);

    Future.value(loginModel);
  }



  // void navigateToFirstView() async{
  //   await _navigationService.navigateToFirstViewScreen();
  // }
  void navigateToForgget() async{
    await _navigationService.navigateToForgetPassword();
  }

  void navigateToRegister() async{
    await _navigationService.navigateToSignUpView();
  }

}