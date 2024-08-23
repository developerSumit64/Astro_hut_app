// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  bool status;
  Data data;

  LoginModel({
    required this.status,
    required this.data,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    status: json["status"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data.toJson(),
  };
}

class Data {
  int id;
  String name;
  String email;
  dynamic emailVerifiedAt;
  String mobile;
  DateTime createdAt;
  DateTime updatedAt;
  String address;
  String image;
  dynamic roleId;
  String isActive;
  DateTime lastLogin;

  Data({
    required this.id,
    required this.name,
    required this.email,
    required  this.emailVerifiedAt,
    required this.mobile,
    required this.createdAt,
    required  this.updatedAt,
    required  this.address,
    required this.image,
    required this.roleId,
    required this.isActive,
    required this.lastLogin,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    emailVerifiedAt: json["email_verified_at"],
    mobile: json["mobile"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    address: json["address"],
    image: json["image"],
    roleId: json["role_id"],
    isActive: json["is_active"],
    lastLogin: DateTime.parse(json["last_login"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "email_verified_at": emailVerifiedAt,
    "mobile": mobile,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "address": address,
    "image": image,
    "role_id": roleId,
    "is_active": isActive,
    "last_login": lastLogin.toIso8601String(),
  };
}
