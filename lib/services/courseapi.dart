import 'package:dio/dio.dart';
import '../constants/apiconstants.dart';
import '../models/course_model.dart';
import 'api.dart';

class CourseApi extends Api {
  // CourseList? _loginModel;
  CourseList? _courselists;



  Future<CourseList?> getCourseList() async {
    try {
      Response response = await Client.get(
        ApiConstants.Course_URL,

      );
      print("Response ${response.statusCode}");
      if (response.statusCode == 200) {
        _courselists= CourseList.fromJson(response.data);
        print("loginModel data in loginModel Api 2 ${_courselists!.toJson()}");
        return _courselists;
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

