import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('Product Detail ID : ${Get.parameters['id']}')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Get.parameters['name'].toString(),
            style: TextStyle(fontSize: 20),
          ),
          ElevatedButton(
            child: const Text('Back'),
            onPressed: () {
              Get.back(result: 'Hello World!');
            },
          ),
        ],
      )),
    );
  }
}
