import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);
  double smallDiameter(BuildContext context) => MediaQuery.of(context).size.width * 2 / 3;
  double bigDiameter(BuildContext context) => MediaQuery.of(context).size.width * 7 / 8;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                )
              ),
            ),
          ),
          Positioned(
            left: -bigDiameter(context) / 4,
            top: -bigDiameter(context) / 4,
            child: Container(
              child: Center(
                child: Text(
                  'My Apps',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  )
                )
              ),
              width: bigDiameter(context),
              height: bigDiameter(context),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Colors.yellow.shade600, Colors.blue],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}