import 'package:belajar_flutter_dasar/routes/route_name.dart';
import 'package:belajar_flutter_dasar/screens/product_list.dart';
import 'package:belajar_flutter_dasar/screens/product_detail.dart';
import 'package:get/get.dart';

class AppPageRoute {
  static final pages = [
    GetPage(name: RouteName.productList, page: () => ProductList()),
    GetPage(
        name: RouteName.productDetail + '/:id?', page: () => ProductDetail())
  ];
}
