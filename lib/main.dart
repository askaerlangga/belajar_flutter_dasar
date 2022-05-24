import 'package:belajar_flutter_dasar/application_color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ApplicationColor>(
        create: (context) => ApplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Consumer<ApplicationColor>(
                builder: (context, applicationColor, _) => Text(
                      'Provider State Management',
                      style: TextStyle(color: applicationColor.color),
                    )),
          ),
          body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Consumer<ApplicationColor>(
                builder: (context, applicationColor, _) => AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  margin: EdgeInsets.all(5),
                  width: 100,
                  height: 100,
                  color: applicationColor.color,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('AB'),
                  Consumer<ApplicationColor>(
                      builder: (context, applicationColor, _) => Switch(
                          activeColor: applicationColor.color,
                          inactiveThumbColor: applicationColor.color,
                          value: applicationColor.isLightBlue,
                          onChanged: (value) {
                            applicationColor.isLightBlue = value;
                          })),
                  Text('LB')
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
