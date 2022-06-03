import 'package:belajar_flutter_dasar/controllers/person_controller.dart';
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
        child: Column(
          children: [
            GetX<PersonController>(
                init: PersonController(),
                builder: ((controller) => Text(
                      controller.person.value.name.toString(),
                      style: const TextStyle(fontSize: 20),
                    ))),
            ElevatedButton(
                onPressed: () {
                  Get.find<PersonController>().changeUpperCase();
                },
                child: Text('Change'))
          ],
        ),
      ),
    );
  }
}
