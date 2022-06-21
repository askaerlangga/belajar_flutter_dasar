import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddProductController extends GetxController {
  TextEditingController productName = TextEditingController();
  TextEditingController productStock = TextEditingController();

  // Custom Alert
  void alertDialog(String message) {
    Get.defaultDialog(title: 'Perhatian', middleText: message);
  }

  // Initial database
  FirebaseFirestore db = FirebaseFirestore.instance;

  // Add product function
  void addProducts(String name, int stock) async {
    CollectionReference products = db.collection('products');
    try {
      await products.add({'name': name, 'stock': stock});
      print('Data berhasil ditambahkan');
      Get.defaultDialog(
          middleText: 'Product berhasil ditambahkan',
          onConfirm: () {
            Get.back();
            Get.back();
          });
    } catch (e) {
      print(e);
      alertDialog('Produk gagal ditambahkan');
    }
  }
}
