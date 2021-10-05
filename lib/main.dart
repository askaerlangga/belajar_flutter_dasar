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
          backgroundColor: Colors.red,
          ),
        body: SafeArea(
          child: Container(
            // margin: EdgeInsets.all(20),
            margin: EdgeInsets.only(left: 10, right: 10),
            // padding: EdgeInsets.all(20),
            child: Column(
              children: const <Widget>[
                Image(
                  image: AssetImage('assets/images/lambang_pdip.jpg'),
                ),
                Text('Kepak sayap kebhinekaan'),
                Text('TENG TENG TENG'),
              ],
            ),
          ))));
  }
}