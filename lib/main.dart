import 'package:belajar_flutter_dasar/controllers/counter_controller.dart';
import 'package:belajar_flutter_dasar/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final counter = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => MaterialApp(
        theme: counter.isDark.value ? ThemeData.dark() : ThemeData.light(),
        home: HomePage(),
      ),
    );
  }
}
