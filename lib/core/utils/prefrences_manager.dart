import 'package:shared_preferences/shared_preferences.dart';

class PreferencesManager {
  static late SharedPreferences sharedPreferences ;

  static init() async{
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future setData({
    required dynamic value,
    required String key,
  }) async{
    return await sharedPreferences.setString(key,value);
  }

  static dynamic getData(String key) {
    return sharedPreferences.get(key);
  }

  static Future removeData(String key) async {
    return await sharedPreferences.remove(key);
  }


}