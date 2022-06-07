import 'package:belajar_flutter_dasar/routes/route_name.dart';
import 'package:belajar_flutter_dasar/screens/second_page.dart';
import 'package:belajar_flutter_dasar/screens/third_page.dart';
import 'package:get/get.dart';

class AppPageRoute {
  static final pages = [
    GetPage(name: RouteName.secondPage, page: () => SecondPage()),
    GetPage(name: RouteName.thirdPage, page: () => ThirdPage())
  ];
}
