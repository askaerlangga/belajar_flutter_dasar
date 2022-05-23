import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Font Feature'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Text Panjang Awikwok',
                  style: TextStyle(fontFeatures: [
                    // https://docs.microsoft.com/en-us/typography/opentype/spec/featurelist
                    FontFeature.enable('frac'),
                    FontFeature.enable('smcp')
                  ]),
                )
              ]),
        ),
      ),
    );
  }
}
