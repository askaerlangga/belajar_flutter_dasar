import 'package:belajar_flutter_dasar/bindings/count_binding.dart';
import 'package:belajar_flutter_dasar/pages/home_page.dart';
import 'package:belajar_flutter_dasar/pages/second_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const HomePage(),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/second',
          page: () => SecondPage(),
          binding: CountBinding(),
        )
      ],
    );
  }
}
