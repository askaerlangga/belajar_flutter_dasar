import 'package:belajar_flutter_dasar/screens/third_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Get.arguments.toString(),
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              child: Text('Third Page'),
              onPressed: () async {
                var data = await Get.to(() => ThirdPage());
                print('Result dari ThirdPage : $data');
              },
            ),
          ],
        ),
      ),
    );
  }
}
