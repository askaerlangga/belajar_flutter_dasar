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
        appBar: AppBar(title: const Text('Aplikasi Hello World!')),
        body: Center(
          child: Container(
            child: const Text(
              'Saya sedang belajar Flutter dasar',
              maxLines: 1, //Maksimal 1 Baris
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
            color: Colors.lightBlue,
            width: 150,
            height: 50,
          ),
        ),
      ),
    );
  }
}