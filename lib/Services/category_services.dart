import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_ecommerce_user_app/Models/category_model.dart';

class CategoryServices {
  //create category
  Future createCategory(CategoryModel categoryModel) async {
    return await FirebaseFirestore.instance
        .collection("categorycollection")
        .add(categoryModel.toJson());
  }

  //update category
  Future updateCategory(CategoryModel categoryModel) async {
    return await FirebaseFirestore.instance
        .collection("collectionPath")
        .doc()
        .update({
      "categoryName": categoryModel.categoryName,
      "categoryImage": categoryModel.categoryImage,
    });
  }

  //delete category

  Future deleteCategory(String categoryId) async {
    return await FirebaseFirestore.instance
        .collection("collectionPath")
        .doc(categoryId)
        .delete();
  }

  //fetch all categories

  Stream<List<CategoryModel>> streamCategories() {
    return FirebaseFirestore.instance.collection("categorycollection")
        .snapshots()
        .map((list) =>
        list.docs.map((singleDoc) => CategoryModel.fromJson(singleDoc.data()))
            .toList()

    );
  }
}
