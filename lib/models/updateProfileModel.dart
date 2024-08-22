class UpdateProfileModel {
  bool? status;
  String? message;
  Data? data;

  UpdateProfileModel({
    this.status,
    this.message,
    this.data,
  });

}

class Data {
  int? id;
  String? name;
  String? email;
  dynamic emailVerifiedAt;
  String? mobile;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? address;
  String? image;
  dynamic roleId;
  String? isActive;
  DateTime? lastLogin;

  Data({
    this.id,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.mobile,
    this.createdAt,
    this.updatedAt,
    this.address,
    this.image,
    this.roleId,
    this.isActive,
    this.lastLogin,
  });

}
