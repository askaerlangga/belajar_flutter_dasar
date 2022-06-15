import 'package:belajar_flutter_dasar/controllers/auth_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                authC.logout();
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Center(),
    );
  }
}
