import 'package:flutter/material.dart';
import 'package:belajar_flutter_dasar/model/post.dart';
import 'package:belajar_flutter_dasar/model/album.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  PostData postData = PostData();
  Album album = Album();
  final TextEditingController _controller = TextEditingController();
  String data = 'Belum ada data';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('POST'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('ID : '), Text('${album.id ?? data}')],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Title : '), Text(album.title ?? data)],
          ),
          Container(
            width: 250,
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                label: Text('input Title'),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                await postData.postData(_controller.text).then((value) {
                  album = value;
                  setState(() {});
                });
              },
              child: Text('POST'))
        ],
      ),
    );
  }
}
