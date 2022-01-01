// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromJson(jsonString);

import 'dart:convert';

CategoryModel categoryModelFromJson(String str) => CategoryModel.fromJson(json.decode(str));

String categoryModelToJson(CategoryModel data) => json.encode(data.toJson());

class CategoryModel {
  CategoryModel({
    this.categoryId,
    this.categoryName,
    this.categoryImage,
  });

  String? categoryId;
  String? categoryName;
  String? categoryImage;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    categoryId: json["categoryID"],
    categoryName: json["categoryName"],
    categoryImage: json["categoryImage"],
  );

  Map<String, dynamic> toJson() => {
    "categoryID": categoryId,
    "categoryName": categoryName,
    "categoryImage": categoryImage,
  };
}
