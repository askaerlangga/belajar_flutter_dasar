import 'package:belajar_flutter_dasar/controllers/text_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  final textFieldController = Get.put(TextFieldController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page')),
      body: Center(
          child: TextField(
        controller: textFieldController.textController,
      )),
    );
  }
}
