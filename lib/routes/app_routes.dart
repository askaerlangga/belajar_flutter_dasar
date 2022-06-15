import 'package:belajar_flutter_dasar/pages/home_page.dart';
import 'package:belajar_flutter_dasar/pages/login_page.dart';
import 'package:belajar_flutter_dasar/pages/signup_page.dart';
import 'package:belajar_flutter_dasar/routes/route_name.dart';
import 'package:get/get.dart';

class AppRoute extends GetxController {
  static final pages = [
    GetPage(
      name: RouteName.home,
      page: () => HomePage(),
    ),
    GetPage(name: RouteName.login, page: () => LoginPage()),
    GetPage(name: RouteName.signup, page: () => SignUpPage())
  ];
}
