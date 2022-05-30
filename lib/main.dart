import 'package:belajar_flutter_dasar/prodi.dart';
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
  Prodi? dropDownValue;
  List<Prodi> prodi = [
    Prodi('Teknik Informatika'),
    Prodi('Sistem Informasi'),
    Prodi('Pendidikan Bahasa Inggris')
  ];
  List<DropdownMenuItem<Prodi>> generateItems1(List<Prodi> prodi) {
    List<DropdownMenuItem<Prodi>> items = [];
    for (var value in prodi) {
      items.add(DropdownMenuItem(
        child: Text(value.name),
        value: value,
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dropdown Button'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DropdownButton<Prodi>(
                  hint: Text('Prodi'),
                  value: dropDownValue,
                  onChanged: (value) {
                    setState(() {
                      dropDownValue = value;
                    });
                  },
                  items: generateItems1(prodi),
                ),
              ]),
        ),
      ),
    );
  }
}
