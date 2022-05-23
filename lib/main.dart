import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? text;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Play Sound'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(text.toString()),
                ElevatedButton(
                    onPressed: () async {
                      text = await scanner.scan();
                      setState(() {});
                    },
                    child: Text('Scanner'))
              ]),
        ),
      ),
    );
  }
}
