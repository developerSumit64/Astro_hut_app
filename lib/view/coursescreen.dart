import 'package:api/view/courseViewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CourseViewModel>.reactive(
        onViewModelReady: (model)=> model.getCourses(),
        viewModelBuilder: ()=> CourseViewModel(),
        builder: (context, model, child){
      return Scaffold(
        body: model.isBusy ? CircularProgressIndicator(color: Colors.black87, strokeAlign: 2,) :
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("${model.courseListModel?.results![0].courseName}"),
        ),
      );
        });
  }
}
