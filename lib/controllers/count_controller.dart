import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0;
  void increment() {
    counter++;
    // Masukan unique ID di sini
    update(['01']);
  }
}
