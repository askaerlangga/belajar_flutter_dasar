import 'package:belajar_flutter_dasar/controllers/get_product_controller.dart';
import 'package:get/get.dart';

class GetProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(GetProductController());
  }
}
