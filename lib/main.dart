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
  Color color1 = Colors.red;
  Color color2 = Colors.blue;
  Color? warnaTarget;
  bool terima = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('Latihan Dragable')),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Draggable<Color>(
                    data: color1,
                    child: SizedBox(
                        width: 50,
                        height: 50,
                        child: Material(
                          color: color1,
                          shape: StadiumBorder(),
                        )),
                    childWhenDragging: SizedBox(
                        width: 50,
                        height: 50,
                        child: Material(
                          color: Colors.grey,
                          shape: StadiumBorder(),
                        )),
                    feedback: SizedBox(
                        width: 50,
                        height: 50,
                        child: Material(
                          color: color1,
                          shape: StadiumBorder(),
                        )),
                  ),
                  Draggable<Color>(
                    data: color2,
                    child: SizedBox(
                        width: 50,
                        height: 50,
                        child: Material(
                          color: color2,
                          shape: StadiumBorder(),
                        )),
                    childWhenDragging: SizedBox(
                        width: 50,
                        height: 50,
                        child: Material(
                          color: Colors.grey,
                          shape: StadiumBorder(),
                        )),
                    feedback: SizedBox(
                        width: 50,
                        height: 50,
                        child: Material(
                          color: color2,
                          shape: StadiumBorder(),
                        )),
                  ),
                ],
              ),
              DragTarget<Color>(
                onWillAccept: (value) => true,
                onAccept: (value) {
                  terima = true;
                  warnaTarget = value;
                },
                builder: (context, candidates, rejected) {
                  return (terima)
                      ? SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: warnaTarget,
                            shape: StadiumBorder(),
                          ))
                      : SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: Colors.grey,
                            shape: StadiumBorder(),
                          ));
                },
              ),
              
            ],
          )),
    );
  }
}
