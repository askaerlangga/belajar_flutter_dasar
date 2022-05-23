import 'dart:convert';

import 'package:belajar_flutter_dasar/model/person.dart';
import 'package:http/http.dart' as http;

class Repository {
  final url = 'https://reqres.in/api/users';
  Future postData(String name, String job) async {
    try {
      final response =
          await http.post(Uri.parse(url), body: {'name': name, 'job': job});
      if (response.statusCode == 201) {
        // If the server did return a 201 CREATED response,
        // then parse the JSON.
        return Person.fromJson(jsonDecode(response.body));
      } else {
        // If the server did not return a 201 CREATED response,
        // then throw an exception.
        throw Exception('Failed to create data.');
      }
    } catch (e) {
      e.toString();
    }
  }
}
