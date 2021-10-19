import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controlText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Latihan Text Field'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                // icon: Icon(Icons.person),
                prefixIcon: Icon(Icons.person),
                hintText: 'Username',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              ),
              // obscureText: true,
              // maxLength: 10,
              onChanged: (value) {
                setState(() {});
              },
              controller: controlText,
            ),
            Text(controlText.text),
          ],
        ),
      ),
    ));
  }
}
