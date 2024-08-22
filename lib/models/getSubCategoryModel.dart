class GetSubCategoryModel {
  bool? status;
  List<Datum>? data;

  GetSubCategoryModel({
    this.status,
    this.data,
  });

}

class Datum {
  int? id;
  String? categoryId;
  String? name;
  String? image;
  String? status;
  DateTime? createdAt;
  DateTime? updatedAt;

  Datum({
    this.id,
    this.categoryId,
    this.name,
    this.image,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

}
