import 'package:belajar_flutter_dasar/model/person.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Hive Database'),
      ),
      body: FutureBuilder(
          future: Hive.openBox('person'),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              } else {
                var person = Hive.box('person');
                if (person.length == 0) {
                  person.add(Person(name: 'Aska', address: 'Serang'));
                  person.add(Person(name: 'Edo', address: 'Serang'));
                }
                return ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: person.length,
                  itemBuilder: (context, index) {
                    Person persons = person.getAt(index);
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${persons.name}',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('${persons.address}'),
                            ],
                          ),
                          const Spacer(
                            flex: 10,
                          ),
                          IconButton(
                            onPressed: () {
                              person.deleteAt(index);
                              setState(() {});
                            },
                            icon: Icon(Icons.delete),
                            color: Colors.red,
                          )
                        ],
                      ),
                    );
                  },
                );
              }
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
