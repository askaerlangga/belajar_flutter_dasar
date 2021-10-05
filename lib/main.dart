import 'package:flutter/material.dart';
import 'font_style.dart';

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
            margin: const EdgeInsets.only(left: 10, right: 10),
            // padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                const Image(
                  image: AssetImage('assets/images/lambang_pdip.jpg'),
                  
                ),
                Text('Kepak sayap kebhinekaan',
                    style: mainHeader,
                    // textAlign: TextAlign.center,
                ),
                Text(
                  'TENG TENG TENG',
                  style: subHeader
                ),
                Text(
                  'Teng teng teng teng teng, \nCoblos gambar banteng. Teng teng teng teng teng, Coblos gambar banteng.',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ))));
  }
}