import 'package:belajar_flutter_dasar/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);
  final authController = Get.find<AuthController>();
  TextEditingController emailC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Lupa Password')),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextField(
              controller: emailC,
              decoration: const InputDecoration(
                  labelText: 'Email', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    authController.resetPassword(emailC.text);
                  },
                  child: const Text(
                    'Kirim',
                    style: TextStyle(fontSize: 16),
                  )),
            ),
          ],
        ));
  }
}
