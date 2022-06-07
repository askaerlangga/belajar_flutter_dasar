import 'package:belajar_flutter_dasar/controllers/count_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  final countController = Get.find<CountController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page')),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          countController.increment();
        },
      ),
      body: Center(
          child: Obx(
        () => Text(
          countController.count.value.toString(),
          style: const TextStyle(fontSize: 100),
        ),
      )),
    );
  }
}
