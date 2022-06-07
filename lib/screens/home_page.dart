import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Bottom Sheet'),
          onPressed: () {
            Get.bottomSheet(
                Center(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Masukan data',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true, fillColor: Colors.white),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text('Save')))
                      ],
                    ),
                  ),
                ),
                // ListView(
                //   padding: EdgeInsets.all(10),
                //   children: <Widget>[
                //     TextField(),
                //     ElevatedButton(onPressed: () {}, child: Text('Save'))
                //   ],
                // ),
                backgroundColor: Colors.amber);
          },
        ),
      ),
    );
  }
}
