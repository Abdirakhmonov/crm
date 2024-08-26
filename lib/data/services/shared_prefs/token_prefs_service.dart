import '../../../app_config.dart';

class TokenPrefsService {
  static String? getAccessToken() => sharedPrefs.getString('accessToken');

  static Future<void> saveAccessToken(String token) async {
    await sharedPrefs.setString('accessToken', token);
  }

  static Future<void> clearAccessToken() async {
    await sharedPrefs.remove('accessToken');
  }
}
