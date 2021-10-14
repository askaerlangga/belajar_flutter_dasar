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
  List<Widget> widgets = [];
  int i = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Latihan ListView')),
        body: ListView(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                child: Text('Tambah'),
                onPressed: () {
                  setState(() {
                    widgets.add(
                        Text('Data ke-$i', style: TextStyle(fontSize: 50)));
                    i++;
                  });
                },
              ),
              ElevatedButton(
                child: Text('Hapus'),
                onPressed: () {
                  setState(() {
                    if (widgets.isNotEmpty) {
                      widgets.removeLast();
                      i--;
                    }
                  });
                },
              ),
            ],
          ),
          Column(
            children: widgets,
          )
        ]),
      ),
    );
  }
}
