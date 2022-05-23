import 'dart:convert';

import 'package:belajar_flutter_dasar/model/person.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Repository {
  final url = 'https://reqres.in/api/users';
  Future getData(int id) async {
    try {
      final response = await http.get(Uri.parse('$url/$id'));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body)['data'];
        return Person.fromJson(data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      return e.toString();
    }
  }
}
