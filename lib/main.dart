import 'dart:math';

import 'package:belajar_flutter_dasar/model/person.dart';
import 'package:belajar_flutter_dasar/model/repository.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Person person = Person();
  Repository repository = Repository();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('HTTP Request'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ID : ',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  person.id ?? 'Belum ada data : ',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Name : ',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  person.name ?? 'Belum ada data : ',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Job : ',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  person.job ?? 'Belum ada data : ',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'CreatedAt : ',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  person.createdAt ?? 'Belum ada data : ',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () async {
                  await repository.postData('Aska', 'Mahasiswa').then((value) {
                    person = value;
                    setState(() {});
                  });
                },
                child: Text('POST Data'))
          ]),
        ),
      ),
    );
  }
}
