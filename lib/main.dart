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
        appBar: AppBar(title: Text('Latihan Text Style')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Ini adalah Text',
                style: TextStyle(
                  fontFamily: 'Blogger',
                  fontSize: 20,
                  color: Colors.red,
                  decoration: TextDecoration.overline,
                  decorationColor: Colors.green,
                  decorationThickness: 5,
                  decorationStyle: TextDecorationStyle.wavy
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}