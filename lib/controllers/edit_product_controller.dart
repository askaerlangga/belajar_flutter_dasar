import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProductController extends GetxController {
  TextEditingController productName = TextEditingController();
  TextEditingController productStock = TextEditingController();

  // Custom Alert
  void alertDialog(String message) {
    Get.defaultDialog(title: 'Perhatian', middleText: message);
  }

  // Initial database
  FirebaseFirestore db = FirebaseFirestore.instance;

  // Get data
  Future<DocumentSnapshot<Object?>> getProduct(String? id) async {
    DocumentReference products = db.collection('products').doc(id);
    return products.get();
  }

  // Add product function
  void editProducts(String name, int stock, String? id) async {
    DocumentReference products = db.collection('products').doc(id);
    try {
      await products.update({'name': name, 'stock': stock});
      print('Data berhasil diubah');
      Get.defaultDialog(
          middleText: 'Product berhasil diubah',
          onConfirm: () {
            Get.back();
            Get.back();
          });
    } catch (e) {
      print(e);
      alertDialog('Produk gagal diubah');
    }
  }
}
