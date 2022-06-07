import 'package:belajar_flutter_dasar/controllers/count_controller.dart';
import 'package:get/get.dart';

class CountBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CountController());
  }
}
