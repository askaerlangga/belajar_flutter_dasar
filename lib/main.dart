import 'dart:async';

import 'package:belajar_flutter_dasar/progress_bar.dart';
import 'package:belajar_flutter_dasar/time_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Progress Bar'),
        ),
        body: Center(
          child: ChangeNotifierProvider(
            create: (context) => TimeState(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Consumer<TimeState>(
                  builder: (context, timeState, _) => CustomProgressBar(
                    200,
                    timeState.time,
                    15,
                  ),
                ),
                Consumer<TimeState>(
                    builder: (context, timeState, _) => ElevatedButton(
                        onPressed: () {
                          Timer.periodic(Duration(seconds: 1), (timer) {
                            (timeState.time == 0)
                                ? timer.cancel()
                                : timeState.time -= 1;
                          });
                        },
                        child: Text('Start')))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
