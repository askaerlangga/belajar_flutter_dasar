import 'package:flutter/material.dart';
import 'package:belajar_flutter_dasar/model/post.dart';
import 'package:belajar_flutter_dasar/model/album.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HTTP Request'),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  menuButton(context, 'POST', () {
                    Navigator.pushNamed(context, '/post');
                  }),
                ],
              ),
            ),
          ],
        ));
  }

  Container menuButton(
      BuildContext context, String text, void Function()? onPressed) {
    return Container(
        margin: EdgeInsets.only(bottom: 10),
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: ElevatedButton(onPressed: onPressed, child: Text(text)));
  }
}
