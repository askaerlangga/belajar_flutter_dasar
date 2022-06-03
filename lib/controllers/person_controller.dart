import 'package:belajar_flutter_dasar/models/person.dart';
import 'package:get/get.dart';

class PersonController extends GetxController {
  var person = Person().obs;
  void changeUpperCase() {
    person.update((val) {
      person.value.name = person.value.name.toString().toUpperCase();
    });
  }
}
