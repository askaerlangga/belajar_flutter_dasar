import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Third Page')),
      body: Center(
          child: ElevatedButton(
        child: const Text('Back'),
        onPressed: () {
          Get.back(result: 'Hello World!');
        },
      )),
    );
  }
}
