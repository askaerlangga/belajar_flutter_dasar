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
  bool isON = false;
  String text = 'Saklar OFF';
  Widget myWidget = const Text(
    'Saklar OFF',
    style: TextStyle(color: Colors.red, fontSize: 20),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Switch'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            myWidget,
            Switch(
                activeColor: Colors.green,
                inactiveThumbColor: Colors.red,
                value: isON,
                onChanged: (value) {
                  isON = value;
                  setState(() {
                    isON
                        ? myWidget = const Text(
                            'Saklar ON',
                            style: TextStyle(color: Colors.green, fontSize: 20),
                          )
                        : myWidget = const Text(
                            'Saklar OFF',
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          );
                  });
                })
          ]),
        ),
      ),
    );
  }
}
