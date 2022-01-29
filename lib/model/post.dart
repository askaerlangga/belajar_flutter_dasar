import 'dart:convert';

import 'package:belajar_flutter_dasar/model/person.dart';
import 'package:http/http.dart' as http;

class PostData {
  final urlAPI = 'https://jsonplaceholder.typicode.com/albums';

  Future postData(String title) async {
    try {
      final response =
          await http.post(Uri.parse(urlAPI), body: {'title': title});
      if (response.statusCode == 201) {
        return Person.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('Failed to create data.');
      }
    } catch (e) {
      return e.toString();
    }
  }
}
