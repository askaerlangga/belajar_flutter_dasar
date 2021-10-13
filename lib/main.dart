import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int angka = 0;
  void tekanTombol(){
    //Mengubah tampilan menjadi state saat ini
    setState(() {
      angka += 1;
    });
  }
  void tekanTombolReset(){
    setState(() {
      angka = 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Stateful Widget')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                angka.toString(),
                style: TextStyle(fontSize: 10 + angka.toDouble()),
              ),
              MaterialButton(
                onPressed: tekanTombol,
                child: Text('Tambah Bilangan'),
                color: Colors.yellow,
              ),
              MaterialButton(
                onPressed: tekanTombolReset,
                child: Text('Reset'),
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
