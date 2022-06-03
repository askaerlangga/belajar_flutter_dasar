import 'package:belajar_flutter_dasar/controllers/person_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final person = Get.put(PersonController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() => Text(
                  person.person.value.name,
                  style: TextStyle(fontSize: 20),
                )),
            ElevatedButton(
                onPressed: () {
                  person.changeUpperCase();
                },
                child: Text('Change'))
          ],
        ),
      ),
    );
  }
}
