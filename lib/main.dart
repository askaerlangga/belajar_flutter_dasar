import 'package:flutter/material.dart';

void main() {
  runApp(const MyApps());
}

class MyApps extends StatelessWidget {
  const MyApps({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Belajar Flutter Dasar'),
          backgroundColor: Colors.orange,
          actions: const <Widget>[
            IconButton(onPressed: null, icon: Icon(Icons.mail)),
          ],
          ),
        body: const SafeArea(
          child: Text('Belajar Dart Dasar')
        )
      )
    );
  }
}