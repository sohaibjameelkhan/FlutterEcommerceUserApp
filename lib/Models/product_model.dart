// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    this.productId,
    this.productName,
    this.productImage,
    this.productDescription,
    this.productPrice,
    this.productRating,
    this.categoryId,
  });

  String? productId;
  String? productName;
  String? productImage;
  String? productDescription;
  String? productPrice;
  String? productRating;
  String? categoryId;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    productId: json["productID"],
    productName: json["productName"],
    productImage: json["productImage"],
    productDescription: json["productDescription"],
    productPrice: json["productPrice"],
    productRating: json["productRating"],
    categoryId: json["categoryID"],
  );

  Map<String, dynamic> toJson() => {
    "productID": productId,
    "productName": productName,
    "productImage": productImage,
    "productDescription": productDescription,
    "productPrice": productPrice,
    "productRating": productRating,
    "categoryID": categoryId,
  };
}
