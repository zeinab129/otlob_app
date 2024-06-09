import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences preferences;

  static Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  static Future<bool> saveData(String key, dynamic value) async {
    if (value is String) {
      return preferences.setString(key, value);
    } else if (value is double) {
      return preferences.setDouble(key, value);
    } else if (value is bool) {
      return preferences.setBool(key, value);
    } else if (value is int) {
      return preferences.setInt(key, value);
    } else {
      return false;
    }
  }

  static String? getToken(String key) {
    return preferences.getString(key);
  }

  static String? getString(String key) {
    return preferences.getString(key);
  }

  static Future<bool> deleteToken(String key) async {
    return await preferences.remove(key);
  }

  static bool isLoginToken() {
    if (CacheHelper.getToken("token") == null ||
        CacheHelper.getToken("token")!.isEmpty ||
        CacheHelper.getToken("token") == "") {
      return false;
    }
    return true;
  }
}
