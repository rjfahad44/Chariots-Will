

import 'package:shared_preferences/shared_preferences.dart';

class PrefsDb{
  Future<void> saveDataToSP(String key, dynamic value) async {
    final prefs = await SharedPreferences.getInstance();
    if (value is String) {
      prefs.setString(key, value);
    } else if (value is int) {
      prefs.setInt(key, value);
    } else if (value is double) {
      prefs.setDouble(key, value);
    } else if (value is bool) {
      prefs.setBool(key, value);
    } else {
      print('Unsupported data type for SharedPreferences');
    }
  }

   Future<String?> getStringDataSP(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  Future<int?> getIntDataSP(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key);
  }

  Future<double?> getDoubleDataSP(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(key);
  }

  Future<bool?> getBoolDataSP(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }

  Future<void> removeDataSP(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }

}