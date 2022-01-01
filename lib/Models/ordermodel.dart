// To parse this JSON data, do
//
//     final orderModel = orderModelFromJson(jsonString);

import 'dart:convert';

OrderModel orderModelFromJson(String str) => OrderModel.fromJson(json.decode(str));

String orderModelToJson(OrderModel data) => json.encode(data.toJson());

class OrderModel {
  OrderModel({
    this.cart,
    this.user,
    this.placementDate,
    this.isProcessed,
    this.isCompleted,
    this.isPending,

    t
  });

  String? cart;
  String? user;
  String? placementDate;
  String? status;
  String? isProcessed;
  String? isCompleted;
  String? isPending;

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
    cart: json["cart"],
    user: json["user"],
    placementDate: json["placementDate"],

    isProcessed: json["isProcessed"],
    isCompleted: json["isCompleted"],
    isPending: json["isPending"],
  );

  Map<String, dynamic> toJson() => {
    "cart": cart,
    "user": user,
    "placementDate": placementDate,
    "status": status,
    "isProcessed": isProcessed,
    "isCompleted": isCompleted,
    "isPending": isPending,

  };
}
