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
  String pesan = 'Ini adalah Pesan';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Anonymous Method')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(pesan),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  pesan = 'Tombol ditekan';
                });
              },
              child: Text('Tekan Saya'),
            )
          ],
        )),
      ),
    );
  }
}
