import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences _sharedPreferences;

  //! Initialize the shared preferences
  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  //! General method to save any type of data
  static Future<bool> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) return await _sharedPreferences.setString(key, value);
    if (value is int) return await _sharedPreferences.setInt(key, value);
    if (value is bool) return await _sharedPreferences.setBool(key, value);
    if (value is double) return await _sharedPreferences.setDouble(key, value);
    if (value is List<String>) {
      return await _sharedPreferences.setStringList(key, value);
    }

    return false;
  }

  //! General method to get any type of data
  static dynamic getData({required String key}) {
    return _sharedPreferences.get(key);
  }

  //! Specialized method for String (optional but handy)
  static String? getString({required String key}) {
    return _sharedPreferences.getString(key);
  }

  //! Check if key exists
  static bool containsKey({required String key}) {
    return _sharedPreferences.containsKey(key);
  }

  //! Remove specific data using a key
  static Future<bool> removeData({required String key}) async {
    return await _sharedPreferences.remove(key);
  }

  //! Clear ALL data from local storage
  static Future<bool> clearAllData() async {
    return await _sharedPreferences.clear();
  }
}
