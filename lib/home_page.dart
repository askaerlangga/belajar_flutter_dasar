import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  double smallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double bigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: <Widget>[
          Positioned(
            right: -smallDiameter(context) / 3,
            top: -smallDiameter(context) / 3,
            child: Container(
              width: smallDiameter(context),
              height: smallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Colors.yellow, Colors.blue],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
            ),
          ),
          Positioned(
            left: -bigDiameter(context) / 4,
            top: -bigDiameter(context) / 4,
            child: Container(
              child: Center(
                  child: Text('My Apps',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ))),
              width: bigDiameter(context),
              height: bigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Colors.yellow.shade600, Colors.blue],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: <Widget>[
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
                    child: Column(children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Email',
                            prefixIcon: Icon(Icons.email, color: Colors.blue),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey))),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.lock, color: Colors.blue),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey))),
                      ),
                    ])),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(right: 20, bottom: 20),
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: SizedBox(
                          width: double.infinity,
                          child: MaterialButton(
                            color: Colors.blue,
                            onPressed: () {},
                            child: Text('SIGN IN', style: TextStyle(color: Colors.white)),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.facebook)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.share))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
