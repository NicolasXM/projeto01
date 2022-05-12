import 'package:flutter/cupertino.dart';

class LoginController {
  ValueNotifier<bool> inLoader = ValueNotifier<bool>(false);

  String? _login;
  setLogin(String value) => _login = value;

  String? _pass;
  setPass(String value) => _pass = value;

  Future<bool> auth() async {
    await Future.delayed(Duration(seconds: 2));
    return _login == 'admin' && _pass == '123';
  }
}
