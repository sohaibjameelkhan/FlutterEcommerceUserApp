// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.docId,
    this.name,
    this.email,
    this.contactNumber,
  });

  String? docId;
  String? name;
  String? email;
  String? contactNumber;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    docId: json["docId"],
    name: json["name"],
    email: json["email"],
    contactNumber: json["contactNumber"],
  );

  Map<String, dynamic> toJson() => {
    "docId": docId,
    "name": name,
    "email": email,
    "contactNumber": contactNumber,
  };
}
