import 'package:get/get.dart';
import 'package:flutter/material.dart';

class TextFieldController extends GetxController {
  var count = 0.obs;
  final textController = TextEditingController().obs;
  void change() => count++;
  void reset() {
    count.value = 0;
    textController.value.clear();
  }

  @override
  void onInit() {
    print('OnInit()');
    // GetX WORKERS
    // ever(count, (_) => print('Menjalankan sesuatu'));
    // everAll([count], (_) => print('Menjalankan sesuatu'));
    // once(count, (_) => print('Menjalankan'));
    // debounce(count, (_) => print('Menjalankan setelah durasi'),
    //     time: Duration(seconds: 3));
    // interval(count, (_) => print('Menjalankan setelah durasi'),
    //     time: Duration(seconds: 3));

    // TODO: implement onInit
    super.onInit();
  }
}
