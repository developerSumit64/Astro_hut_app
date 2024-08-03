import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../firstView/firstViewScreen.dart';

class LoginOrRegisterViewModel extends BaseViewModel{
  final NavigationService _navigationService = NavigationService();
  void navigateToHome() {
    _navigationService.navigateTo(FirstViewScreen as String);
  }

}