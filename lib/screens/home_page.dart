import 'package:belajar_flutter_dasar/routes/route_name.dart';
import 'package:belajar_flutter_dasar/screens/second_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Next Page'),
          onPressed: () {
            Get.offNamed(RouteName.secondPage, arguments: 'Data dari HomePage');
            // Get.off(() => SecondPage(), arguments: 'Data dari HomePage');
          },
        ),
      ),
    );
  }
}
