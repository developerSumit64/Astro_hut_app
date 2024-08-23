import 'dart:convert';

import 'package:dio/dio.dart';

import '../constants/apiconstants.dart';
import '../models/loginModel.dart';
import 'api.dart';

class LoginApi extends Api{
  LoginModel? _loginModel;

  Future<LoginModel?> getLogin(String? emailId, String? mobile, String? password) async {
    try {
      Map<String, dynamic> formUpdated = {};

      if(emailId!.isNotEmpty)
      formUpdated['email']= emailId;

      if(mobile!.isNotEmpty)
      formUpdated['mobile'] = mobile;

      if(password!.isNotEmpty)
      formUpdated['password']= password;

      Response response = await Client.post(
        ApiConstants.Login,
        data: jsonEncode(formUpdated),
        options: Options(
          contentType: Headers.jsonContentType,
           headers: {
            "Accept":"application/json",
             "Content-Type":"application/json"
           },
          method: "POST"
        )
      );
      print("Response ${response.statusCode}");
      if (response.statusCode == 200) {
        _loginModel= LoginModel.fromJson(response.data);
        print("loginModel data in loginModel Api 2 ${_loginModel!.toJson()}");
        return _loginModel;
      }
    }
    on DioError catch (e) {
      // DioError is caught by the onError interceptor.
      // You can handle the error here as well, or it can be propagated to higher levels of your code.
      print('Dio Error Status Code: ${e.response?.statusCode}');
      print('Dio Error Message: ${e.response?.statusMessage}');
      print('Dio Error Data: ${e.response?.data}');
    } catch (e) {
      // Handle other types of exceptions.
      print('Other Exception: $e');
    }
    return null;
  }



}