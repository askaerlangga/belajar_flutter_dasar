import 'package:belajar_flutter_dasar/controllers/text_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  final textFieldController = Get.put(TextFieldController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                textFieldController.reset();
                // textFieldController.textController.clear();
              },
              icon: Icon(Icons.refresh))
        ],
      ),
      body: Center(
          child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(() =>
                Text('Terjadi sesuatu : ${textFieldController.count.value}')),
            Container(
              margin: EdgeInsets.all(10),
              child: Obx(
                () => TextField(
                  controller: textFieldController.textController.value,
                  onChanged: (_) => textFieldController.change(),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide())),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
