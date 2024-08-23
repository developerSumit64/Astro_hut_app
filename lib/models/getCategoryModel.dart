class GetCategoryModel {
  bool? status;
  List<Datum>? data;

  GetCategoryModel({
    this.status,
    this.data,
  });

}

class Datum {
  int? id;
  String? name;
  String? image;
  DateTime? createdAt;
  DateTime? updatedAt;

  Datum({
    this.id,
    this.name,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

}
