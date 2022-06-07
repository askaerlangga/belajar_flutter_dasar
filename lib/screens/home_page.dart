import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Snackbar'),
          onPressed: () {
            Get.snackbar('Error', 'Tidak ada koneksi',
                animationDuration: Duration(milliseconds: 500),
                backgroundColor: Colors.red,
                colorText: Colors.white,
                icon: Icon(
                  Icons.error,
                  color: Colors.white,
                ),
                snackPosition: SnackPosition.BOTTOM);
          },
        ),
      ),
    );
  }
}
