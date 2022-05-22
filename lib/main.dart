import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Latihan QR Flutter')),
        body: Container(
          color: Colors.black,
          child: Center(
              child: Container(
            margin: EdgeInsets.all(20),
            child: QrImage(
              errorCorrectionLevel: QrErrorCorrectLevel.M,
              embeddedImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/36721875?v=4'),
              version: 4,
              data: 'Aska Erlangga',
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(20),
            ),
          )),
        ),
      ),
    );
  }
}
