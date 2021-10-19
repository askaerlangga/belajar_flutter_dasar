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

              // Custom Button
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blue, Colors.purple],
                      begin: FractionalOffset.topLeft,
                      end: FractionalOffset.bottomRight),
                  borderRadius: BorderRadius.circular(20),
                ),
                width: 140,
                height: 40,
                // color: Colors.yellow,
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    'Custom Button',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
