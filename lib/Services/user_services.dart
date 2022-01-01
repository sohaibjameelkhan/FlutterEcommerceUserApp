import 'package:flutter_ecommerce_user_app/Models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserServices {
  ///Create User
  Future createUser(UserModel userModel) async {
    return await FirebaseFirestore.instance
        .collection("userCollection")
        .add(userModel.toJson());
  }

  ///Fetch User Record
  Stream<UserModel> fetchUserRecord(String userID) {
    return FirebaseFirestore.instance
        .collection("userCollection")
        .doc(userID)
        .snapshots()
        .map((userData) => UserModel.fromJson(userData.data()!));

  }

  ///Update user record

  Future updateUserDetails(UserModel userModel) async {
    return await FirebaseFirestore.instance
        .collection("userCollection")
        .doc(userModel.docId)
        .update({
      "contactNumber": userModel.contactNumber,
      "name": userModel.name,
    });
  }
}
