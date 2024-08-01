

import 'package:api/app/app.locator.dart';
import 'package:api/models/course_model.dart';
import 'package:api/services/courseapi.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CourseViewModel extends BaseViewModel{
  // final NavigationService _navigationService= locator<NavigationService>();
  CourseList? courseListModel;


  Future<CourseList?> getCourses() async{
    setBusy(true);

    courseListModel = await locator<CourseApi>().getCourseList();
    print("Data in course ${courseListModel!.toJson()}");
    notifyListeners();
    setBusy(false);

    return Future.value(courseListModel);

  }}