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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(person.avatar ??
                              'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png'),
                          fit: BoxFit.cover)),
                ),
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
                      (person.firstName != null || person.lastName != null)
                          ? '${person.firstName} ${person.lastName}'
                          : 'Belum ada data : ',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Email : ',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      person.email ?? 'Belum ada data : ',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () async {
                      await repository
                          .getData(1 + Random().nextInt(10))
                          .then((value) {
                        person = value;
                        setState(() {});
                      });
                    },
                    child: Text('Get Data'))
              ]),
        ),
      ),
    );
  }
}
