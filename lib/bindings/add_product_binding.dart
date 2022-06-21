import 'package:belajar_flutter_dasar/controllers/add_product.dart';
import 'package:get/get.dart';

class AddProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AddProductController());
  }
}
