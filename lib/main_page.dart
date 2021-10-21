import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Custom Card Example', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red.shade900,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.redAccent, Colors.redAccent.shade100],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 10,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1633882228840-e847b7694baf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1374&q=80'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: 20.0,
                          top: MediaQuery.of(context).size.height * 0.35,
                          right: 20.0,
                          bottom: 20.0),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Halo Selamat Datang di Aplikasiku',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.redAccent),
                                maxLines: 2,
                                textAlign: TextAlign.center),
                            Container(
                              margin: EdgeInsets.only(top: 20.0, bottom: 15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Posted on ',
                                      style: TextStyle(color: Colors.grey)),
                                  Text('21 Oktober 2021',
                                      style:
                                          TextStyle(color: Colors.redAccent)),
                                ],
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Spacer(flex: 10),
                                Icon(Icons.thumb_up,
                                    size: 18, color: Colors.grey),
                                Spacer(flex: 1),
                                Text('20'),
                                Spacer(flex: 5),
                                Icon(Icons.comment,
                                    size: 18, color: Colors.grey),
                                Spacer(flex: 1),
                                Text('10'),
                                Spacer(flex: 10),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
