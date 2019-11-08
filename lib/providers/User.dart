import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class User with ChangeNotifier {
  var _users = [];
  List<dynamic> get users => _users;

  void all() {
    http.get('http://jsonplaceholder.typicode.com/users')
      .then((value) {
        _users = json.decode(value.body);
        notifyListeners();
      });
  }


}
