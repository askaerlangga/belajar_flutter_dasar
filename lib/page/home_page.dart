import 'package:flutter/material.dart';
import 'package:belajar_flutter_dasar/model/post.dart';
import 'package:belajar_flutter_dasar/model/person.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PostData postData = PostData();
  Person person = Person();
  String data = 'Belum ada data';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTTP Request'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [Text('ID : '), Text('${person.id ?? data}')],
          ),
          Row(
            children: [Text('Title : '), Text(person.title ?? data)],
          ),
          ElevatedButton(
              onPressed: () async {
                await postData.postData('aska').then((value) {
                  person = value;
                  setState(() {});
                });
              },
              child: Text('POST'))
        ],
      ),
    );
  }
}
