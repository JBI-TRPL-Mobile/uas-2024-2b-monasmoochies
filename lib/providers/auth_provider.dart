import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  String _email = 'monasputri12@gmail.com';
  String _password = '123456';

  void setEmail(String email) {
    _email = email;
    notifyListeners();
  }

  void setPassword(String password) {
    _password = password;
    notifyListeners();
  }

  Future<bool> login() async {
    // Simulasi login
    await Future.delayed(Duration(seconds: 2));
    if (_email == "monasputri12@gmail.com" && _password == "123456") {
      return true;
    }
    return false;
  }
}
