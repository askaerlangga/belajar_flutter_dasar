import 'package:belajar_flutter_dasar/bindings/add_product_binding.dart';
import 'package:belajar_flutter_dasar/bindings/edit_product_binding.dart';
import 'package:belajar_flutter_dasar/bindings/get_product_binding.dart';
import 'package:belajar_flutter_dasar/pages/add_product_page.dart';
import 'package:belajar_flutter_dasar/pages/edit_product_page.dart';
import 'package:belajar_flutter_dasar/pages/forgot_password.dart';
import 'package:belajar_flutter_dasar/pages/home_page.dart';
import 'package:belajar_flutter_dasar/pages/login_page.dart';
import 'package:belajar_flutter_dasar/pages/signup_page.dart';
import 'package:belajar_flutter_dasar/routes/route_name.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AppRoute extends GetxController {
  static final pages = [
    GetPage(
        name: RouteName.home,
        page: () => HomePage(),
        bindings: [GetProductBinding()]),
    GetPage(name: RouteName.login, page: () => LoginPage()),
    GetPage(name: RouteName.signup, page: () => SignUpPage()),
    GetPage(name: RouteName.forgotPassword, page: () => ForgotPassword()),
    GetPage(
        name: RouteName.addProduct,
        page: () => AddProduct(),
        binding: AddProductBinding()),
    GetPage(
        name: RouteName.editProduct,
        page: () => EditProductPage(),
        binding: EditProductBinding())
  ];
}
