import 'package:belajar_flutter_dasar/routes/route_name.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  Stream<User?> streamAuthStatus() {
    return auth.authStateChanges();
  }

  void alertSnackbar(String message) {
    Get.snackbar('Perhatian', message,
        // colorText: Colors.white,
        backgroundColor: Colors.red.shade300,
        animationDuration: Duration(seconds: 1));
  }

  void login(String email, String password) async {
    try {
      UserCredential myUser = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (myUser.user!.emailVerified) {
        Get.offAllNamed(RouteName.home);
      } else {
        Get.defaultDialog(
            title: 'Perhatian',
            middleText:
                'Email kamu belum terverifikasi, silahkan cek email untuk verifikasi');
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        alertSnackbar('Email yang anda masukan salah!');
      } else if (e.code == 'wrong-password') {
        alertSnackbar('Password yang anda masukan salah!');
      }
    }
  }

  void logout() async {
    await auth.signOut();
    Get.offAllNamed(RouteName.login);
  }

  void signup(String email, String password) async {
    try {
      UserCredential myuser = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await myuser.user!.sendEmailVerification();
      Get.defaultDialog(
          title: 'Perhatian',
          middleText: 'Cek email kamu untuk verifikasi akun');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        // print('The account already exists for that email.');
        alertSnackbar('Email sudah ada, silahkan gunakan email yang lain');
      }
    } catch (e) {
      print(e);
    }
  }

  void resetPassword(String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        alertSnackbar('Penulisan email salah');
      } else if (e.code == 'user-not-found') {
        alertSnackbar('Email tidak terdaftar');
      }
    } catch (e) {
      print(e);
    }
  }
}
