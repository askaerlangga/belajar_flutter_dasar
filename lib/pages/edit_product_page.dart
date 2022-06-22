import 'package:belajar_flutter_dasar/controllers/edit_product_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProductPage extends StatelessWidget {
  EditProductPage({Key? key}) : super(key: key);
  final editProductController = Get.find<EditProductController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Edit Product'),
        ),
        body: FutureBuilder<DocumentSnapshot<Object?>>(
          future: editProductController.getProduct(Get.arguments),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              var data = snapshot.data!.data() as Map<String, dynamic>;
              editProductController.productName.text = data['name'];
              editProductController.productStock.text =
                  data['stock'].toString();
              return Container(
                  padding: EdgeInsets.all(20),
                  child: Column(children: [
                    TextField(
                      controller: editProductController.productName,
                      decoration: const InputDecoration(
                          labelText: 'Nama barang',
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: editProductController.productStock,
                      decoration: const InputDecoration(
                          labelText: 'Stock barang',
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            editProductController.editProducts(
                                editProductController.productName.text,
                                int.parse(
                                    editProductController.productStock.text),
                                Get.arguments.toString());
                          },
                          child: const Text(
                            'Edit',
                            style: TextStyle(fontSize: 16),
                          )),
                    ),
                  ]));
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}
