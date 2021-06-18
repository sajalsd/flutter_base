import 'package:shared_preferences/shared_preferences.dart';

class PreferenceManager {
  static const keyToken = "token";

  static Future<SharedPreferences> getSharedPref() async {
    return await SharedPreferences.getInstance();
  }

  static saveToken(String token) async {
    await getSharedPref().then((SharedPreferences pref) {
      pref.setString(keyToken, token);
    });
  }

  static Future<String?> getToken() async {
    return await getSharedPref().then((SharedPreferences pref) {
      String? token = pref.getString(keyToken);

      return token;
    });
  }


  static clearToken() async {
    await getSharedPref().then((SharedPreferences pref) {
      pref.remove(keyToken);
    });
  }

}
