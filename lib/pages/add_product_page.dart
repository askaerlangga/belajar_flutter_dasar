import 'package:belajar_flutter_dasar/controllers/add_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class AddProduct extends StatelessWidget {
  AddProduct({Key? key}) : super(key: key);
  final addProductController = Get.find<AddProductController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: Container(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            TextField(
              controller: addProductController.productName,
              decoration: const InputDecoration(
                  labelText: 'Nama barang', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: addProductController.productStock,
              decoration: const InputDecoration(
                  labelText: 'Stock barang', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    addProductController.addProducts(
                        addProductController.productName.text,
                        int.parse(addProductController.productStock.text));
                  },
                  child: const Text(
                    'Kirim',
                    style: TextStyle(fontSize: 16),
                  )),
            ),
          ])),
    );
  }
}
