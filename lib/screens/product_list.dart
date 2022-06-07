import 'package:belajar_flutter_dasar/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Product 1'),
              onPressed: () =>
                  Get.toNamed(RouteName.productDetail + '/1?name=Sepatu'),
            ),
            ElevatedButton(
              child: const Text('Product 2'),
              onPressed: () =>
                  Get.toNamed(RouteName.productDetail + '/2?name=Kaos Kaki'),
            ),
            ElevatedButton(
              child: const Text('Product 3'),
              onPressed: () =>
                  Get.toNamed(RouteName.productDetail + '/3?name=Sandal'),
            ),
          ],
        ),
      ),
    );
  }
}
