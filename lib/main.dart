import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Latihan TabBar'),
            bottom: const TabBar(
                indicator: BoxDecoration(color: Colors.red),
                // indicatorSize: TabBarIndicatorSize.label,
                // indicatorWeight: 50,
                indicatorColor: Colors.purple,
                // indicatorPadding: EdgeInsets.all(10),
                labelColor: Colors.yellow,
                unselectedLabelColor: Colors.yellow,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home),
                    text: 'Home',
                  ),
                  Tab(
                    icon: Icon(Icons.chat),
                    text: 'Chat',
                  ),
                  Tab(
                    icon: Icon(Icons.call),
                    text: 'Call',
                  )
                ]),
          ),
          body: const TabBarView(children: [
            Center(
              child: Text('Tab 1'),
            ),
            Center(
              child: Text('Tab 2'),
            ),
            Center(
              child: Text('Tab 3'),
            )
          ]),
        ),
      ),
    );
  }
}
