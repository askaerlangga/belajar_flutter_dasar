import 'package:belajar_flutter_dasar/models/person.dart';
import 'package:get/get.dart';

class PersonController extends GetxController {
  var person = Person();
  void changeUpperCase() {
    person.name = person.name.toString().toUpperCase();
    update();
  }
}
