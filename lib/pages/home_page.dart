import 'package:belajar_flutter_dasar/controllers/auth_controller.dart';
import 'package:belajar_flutter_dasar/controllers/get_product_controller.dart';
import 'package:belajar_flutter_dasar/routes/route_name.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final authC = Get.find<AuthController>();
  final getProductController = Get.find<GetProductController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed(RouteName.addProduct);
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text('Home Page'),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Get.defaultDialog(
                    title: 'Keluar',
                    middleText: 'Apakah anda yakin ingin keluar?',
                    onCancel: () => Get.back(),
                    onConfirm: () => authC.logout(),
                  );
                },
                icon: Icon(Icons.logout))
          ],
        ),
        body: StreamBuilder<QuerySnapshot<Object?>>(
          stream: getProductController.getProductRealTime(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              var data = snapshot.data!.docs;
              return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        Get.toNamed(RouteName.editProduct,
                            arguments: data[index].id);
                      },
                      title: Text(
                          'Produk : ${(data[index].data() as Map<String, dynamic>)['name']}'),
                      subtitle: Text(
                          'Stock : ${(data[index].data() as Map<String, dynamic>)['stock']}'),
                      trailing: IconButton(
                        onPressed: () {
                          getProductController.deleteProduct(data[index].id);
                        },
                        icon: const Icon(Icons.delete),
                      ),
                    );
                  });
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}
