import 'package:belajar_flutter_dasar/controllers/auth_controller.dart';
import 'package:belajar_flutter_dasar/pages/home_page.dart';
import 'package:belajar_flutter_dasar/pages/login_page.dart';
import 'package:belajar_flutter_dasar/routes/app_routes.dart';
import 'package:belajar_flutter_dasar/routes/route_name.dart';
import 'package:belajar_flutter_dasar/utils/loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authController = Get.put(AuthController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: authController.streamAuthStatus(),
      builder: (context, snapshot) {
        print(snapshot);
        if (snapshot.connectionState == ConnectionState.active) {
          return GetMaterialApp(
            initialRoute:
                snapshot.data != null ? RouteName.home : RouteName.login,
            getPages: AppRoute.pages,
          );
        }
        return const LoadingView();
      },
    );
  }
}
