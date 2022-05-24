import 'package:belajar_flutter_dasar/cart.dart';
import 'package:belajar_flutter_dasar/money.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<Money>(create: (context) => Money()),
          ChangeNotifierProvider<Cart>(create: (context) => Cart())
        ],
        child: Scaffold(
          floatingActionButton: Consumer<Money>(
            builder: (context, money, _) => Consumer<Cart>(
              builder: (context, cart, _) => FloatingActionButton(
                onPressed: () {
                  if (money.balance >= 500) {
                    cart.quantity += 1;
                    money.balance -= 500;
                  }
                },
                child: Icon(Icons.add),
              ),
            ),
          ),
          appBar: AppBar(title: Text('Multi Provider')),
          body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Balace'),
                    Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(border: Border.all()),
                        width: 150,
                        height: 40,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Consumer<Money>(
                            builder: (context, money, _) => Text(
                              money.balance.toString(),
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(border: Border.all()),
                  width: 300,
                  height: 40,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Consumer<Cart>(
                      builder: (context, cart, _) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Apel (500) x ${cart.quantity}',
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            (500 * cart.quantity).toString(),
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ))
            ]),
          ),
        ),
      ),
    );
  }
}
