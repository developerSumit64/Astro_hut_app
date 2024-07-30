// To parse this JSON data, do
//
//     final courseList = courseListFromJson(jsonString);

import 'dart:convert';

CourseList courseListFromJson(String str) => CourseList.fromJson(json.decode(str));

String courseListToJson(CourseList data) => json.encode(data.toJson());

class CourseList {
  int? count;
  int? responseCode;
  List<Result>? results;

  CourseList({
    this.count,
    this.responseCode,
    this.results,
  });

  factory CourseList.fromJson(Map<String, dynamic> json) => CourseList(
    count: json["count"],
    responseCode: json["responseCode"],
    results: json["results"] == null ? [] : List<Result>.from(json["results"]!.map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "responseCode": responseCode,
    "results": results == null ? [] : List<dynamic>.from(results!.map((x) => x.toJson())),
  };
}

class Result {
  int? courseId;
  int? programCode;
  int? courseObjectId;
  int? courseCode;
  String? courseName;
  int? courseTypeId;
  String? image;
  bool? isSem;
  bool? isRegular;
  bool? isDde;
  bool? isUtd;
  bool? isCollege;
  int? ugpgAnnualId;
  int? semCount;
  int? courseDuration;
  bool? isActive;
  bool? isUsed;
  ResultBranch? resultBranch;
  int? createdBy;
  DateTime? createdOn;
  int? modifyBy;
  DateTime? modifiedOn;

  Result({
    this.courseId,
    this.programCode,
    this.courseObjectId,
    this.courseCode,
    this.courseName,
    this.courseTypeId,
    this.image,
    this.isSem,
    this.isRegular,
    this.isDde,
    this.isUtd,
    this.isCollege,
    this.ugpgAnnualId,
    this.semCount,
    this.courseDuration,
    this.isActive,
    this.isUsed,
    this.resultBranch,
    this.createdBy,
    this.createdOn,
    this.modifyBy,
    this.modifiedOn,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    courseId: json["CourseID"],
    programCode: json["ProgramCode"],
    courseObjectId: json["CourseObjectID"],
    courseCode: json["CourseCode"],
    courseName: json["CourseName"],
    courseTypeId: json["CourseTypeId"],
    image: json["Image"],
    isSem: json["IsSem"],
    isRegular: json["IsRegular"],
    isDde: json["IsDDE"],
    isUtd: json["IsUTD"],
    isCollege: json["IsCollege"],
    ugpgAnnualId: json["UGPGAnnualId"],
    semCount: json["SemCount"],
    courseDuration: json["CourseDuration"],
    isActive: json["IsActive"],
    isUsed: json["IsUsed"],
    resultBranch: resultBranchValues.map[json["ResultBranch"]]!,
    createdBy: json["CreatedBy"],
    createdOn: json["CreatedOn"] == null ? null : DateTime.parse(json["CreatedOn"]),
    modifyBy: json["ModifyBy"],
    modifiedOn: json["ModifiedOn"] == null ? null : DateTime.parse(json["ModifiedOn"]),
  );

  Map<String, dynamic> toJson() => {
    "CourseID": courseId,
    "ProgramCode": programCode,
    "CourseObjectID": courseObjectId,
    "CourseCode": courseCode,
    "CourseName": courseName,
    "CourseTypeId": courseTypeId,
    "Image": image,
    "IsSem": isSem,
    "IsRegular": isRegular,
    "IsDDE": isDde,
    "IsUTD": isUtd,
    "IsCollege": isCollege,
    "UGPGAnnualId": ugpgAnnualId,
    "SemCount": semCount,
    "CourseDuration": courseDuration,
    "IsActive": isActive,
    "IsUsed": isUsed,
    "ResultBranch": resultBranchValues.reverse[resultBranch],
    "CreatedBy": createdBy,
    "CreatedOn": createdOn?.toIso8601String(),
    "ModifyBy": modifyBy,
    "ModifiedOn": modifiedOn?.toIso8601String(),
  };
}

enum ResultBranch {
  EMPTY,
  R1,
  R2,
  R3,
  R4,
  R5,
  R6,
  R7,
  R8,
  RESULT_BRANCH_R1
}

final resultBranchValues = EnumValues({
  "": ResultBranch.EMPTY,
  "R1": ResultBranch.R1,
  "R2": ResultBranch.R2,
  "R3": ResultBranch.R3,
  "R4": ResultBranch.R4,
  "R5": ResultBranch.R5,
  "R6": ResultBranch.R6,
  "R7": ResultBranch.R7,
  "R8": ResultBranch.R8,
  "r1": ResultBranch.RESULT_BRANCH_R1
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
