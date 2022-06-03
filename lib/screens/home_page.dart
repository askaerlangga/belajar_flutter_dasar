import 'package:belajar_flutter_dasar/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final counter = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'ANGKA ${counter.counter}',
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  counter.increment();
                },
                child: const Text('Counter++')),
            ElevatedButton(
                onPressed: () {
                  counter.decrement();
                },
                child: const Text('Counter--')),
            ElevatedButton(
                onPressed: () {
                  counter.changeTheme();
                },
                child: const Text('Change Theme'))
          ],
        ),
      ),
    );
  }
}
