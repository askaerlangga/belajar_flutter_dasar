import 'package:belajar_flutter_dasar/routes/page_route.dart';
import 'package:belajar_flutter_dasar/screens/home_page.dart';
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
      home: HomePage(),
      // HomePage
      initialRoute: '/',
      getPages: AppPageRoute.pages,
    );
  }
}
