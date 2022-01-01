import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_ecommerce_user_app/Models/product_model.dart';

class ProductServices{
  
  //Add Product 
  Future createProduct(ProductModel productModel) async{
    return await FirebaseFirestore.instance.collection("productCollection").add(
        productModel.toJson());
  }
  //Update Product
  Future updateProduct(ProductModel productModel) async{
    return await FirebaseFirestore.instance.collection("productCollection").doc(productModel.productId).update(
      {
        "productName": productModel.productName,
        "productImage": productModel.productImage,
        "productDescription": productModel.productDescription,
        "productPrice": productModel.productPrice,
      }
    );
  }

}