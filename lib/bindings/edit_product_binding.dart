import 'package:belajar_flutter_dasar/controllers/edit_product_controller.dart';
import 'package:get/get.dart';

class EditProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(EditProductController());
  }
}
