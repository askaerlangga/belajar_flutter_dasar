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
          child: const Text('Show Dialog'),
          onPressed: () async {
            Get.defaultDialog(
                // Klik background tidak close
                barrierDismissible: false,
                title: 'Error',
                middleText: 'Tidak ada koneksi internet',
                // textCancel: 'Cancel',
                cancel: ElevatedButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text('Ok')));
          },
        ),
      ),
    );
  }
}
