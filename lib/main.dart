import 'dart:async';

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
  int counter = 0;
  bool isBlack = true;
  bool isStop = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Timer Demo'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              '$counter',
              style: TextStyle(
                  color: (isBlack) ? Colors.black : Colors.red,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () {
                  Timer(Duration(seconds: 5), () {
                    setState(() {
                      isBlack = false;
                    });
                  });
                },
                child: Text('Ubah Warna 5 detik kemudian')),
            ElevatedButton(
                onPressed: () {
                  Timer.run(() {
                    setState(() {
                      isBlack = false;
                    });
                  });
                },
                child: Text('Ubah Warna secara langsung')),
            ElevatedButton(
                onPressed: () {
                  isStop = false;
                  counter = 0;
                  Timer.periodic(Duration(seconds: 1), (timer) {
                    if (isStop) {
                      timer.cancel();
                    }
                    setState(() {
                      counter++;
                    });
                  });
                },
                child: Text('Start Timer')),
            ElevatedButton(
                onPressed: () {
                  isStop = true;
                },
                child: Text('Stop Timer'))
          ]),
        ),
      ),
    );
  }
}
