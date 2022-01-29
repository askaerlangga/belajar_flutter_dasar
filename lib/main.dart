import 'package:belajar_flutter_dasar/page/home_page.dart';
import 'package:belajar_flutter_dasar/page/post_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'HTTP Request',
    initialRoute: '/home',
    routes: {
      '/home': (context) => const HomePage(),
      '/post': (context) => const PostPage(),
    },
  ));
}
