import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Latihan Membuat Button')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                child: Text('Elevate Button'),
              ),
              MaterialButton(
                onPressed: () {},
                child: Text(
                  'Material Button',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
                splashColor: Colors.redAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
