import 'package:belajar_flutter_dasar/controllers/auth_controller.dart';
import 'package:belajar_flutter_dasar/routes/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final emailC = TextEditingController();
  final passwordC = TextEditingController();
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: emailC,
                  decoration: const InputDecoration(
                      labelText: 'Email', border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: passwordC,
                  obscureText: true,
                  decoration: const InputDecoration(
                      labelText: 'Password', border: OutlineInputBorder()),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {
                          Get.toNamed(RouteName.forgotPassword);
                        },
                        child: Text('Lupa Password?'))),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        authC.login(emailC.text, passwordC.text);
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 16),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Belum punya akun?'),
                    TextButton(
                        onPressed: () => Get.toNamed(RouteName.signup),
                        child: Text('Daftar'))
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
