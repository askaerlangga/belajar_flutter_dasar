import 'package:belajar_flutter_dasar/person.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Person person1 = Person('Aska', 'Serang');

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        title: Text(person1.name),
      )),
    );
  }
}
