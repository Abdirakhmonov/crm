import 'dart:convert';

import 'package:crm_flutter/app_config.dart';
import 'package:crm_flutter/data/models/user/user.dart';

class UserSharedPrefsService {
  static const String _userPrefsKey = '__user_data__';

  static Future<void> updateUser(User user) async =>
      await sharedPrefs.setString(_userPrefsKey, jsonEncode(user.toMap()));

  static User? getUser() {
    final data = sharedPrefs.getString(_userPrefsKey);

    if (data == null) return null;

    return User.fromJson(jsonDecode(data));
  }

  static Future<bool> clearUser() async =>
      await sharedPrefs.remove(_userPrefsKey);
}
