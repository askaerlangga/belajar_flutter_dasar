import 'package:belajar_flutter_dasar/controllers/count_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counterController.increment();
        },
      ),
      appBar: AppBar(
        title: const Text('GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'ANGKA',
              style: TextStyle(fontSize: 20),
            ),
            GetBuilder<CounterController>(
              // Unique ID
              id: '01',
              builder: (_) => Text(
                counterController.counter.toString(),
                style: const TextStyle(fontSize: 100),
              ),
            ),
            GetBuilder<CounterController>(
              builder: (_) => Text(
                counterController.counter.toString(),
                style: const TextStyle(fontSize: 100),
              ),
            )
          ],
        ),
      ),
    );
  }
}
