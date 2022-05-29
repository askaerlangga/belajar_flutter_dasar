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
  List<bool> _isSelected = [true, false, false];
  String _text = 'Play';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Judul Aplikasi'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$_text'),
            ToggleButtons(
              children: <Widget>[
                Icon(Icons.play_arrow),
                Icon(Icons.pause),
                Icon(Icons.stop)
              ],
              isSelected: _isSelected,
              onPressed: (index) {
                setState(() {
                  for (int i = 0; i < _isSelected.length; i++) {
                    if (i == index) {
                      _isSelected[i] = true;
                      (_isSelected[0])
                          ? _text = 'Play'
                          : (_isSelected[1])
                              ? _text = 'Pause'
                              : _text = 'Stop';
                    } else {
                      _isSelected[i] = false;
                    }
                  }

                  // isSelected[index] = !isSelected[index];
                });
              },
            ),
          ],
        )),
      ),
    );
  }
}
