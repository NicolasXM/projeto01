import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsService {
  static final String _key = 'key';

  static save(String user) async {
    var prefers = await SharedPreferences.getInstance();
    prefers.setString(_key, jsonEncode({"user": user, "isAuth": true}));
  }

  static Future<bool> isAuth() async {
    var prefers = await SharedPreferences.getInstance();
    var jsonResult = prefers.getString(_key);

    if (jsonResult != null) {
      var mapUser = jsonDecode(jsonResult);
      return mapUser['isAuth'];
    }

    return false;
  }

  static logout() async {
    var prefers = await SharedPreferences.getInstance();

    prefers.remove(_key);
  }
}
