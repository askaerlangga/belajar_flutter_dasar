import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Latihan Image')),
        body: Center(
          child: Container(
            color: Colors.black,
            width: 200,
            height: 200,
            padding: EdgeInsets.all(3),
            child: Image(
              image: NetworkImage('https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2020/12/11/3973959611.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        )
      ),
    );
  }
}