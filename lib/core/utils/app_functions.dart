import 'package:crm_flutter/data/models/user/user.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class AppFunction {
  static void showToast({
    required String message,
    required bool isSuccess,
    required BuildContext context,
  }) {
    toastification.show(
      context: context,
      type: isSuccess ? ToastificationType.success : ToastificationType.error,
      autoCloseDuration: const Duration(seconds: 5),
      description: Text(message),
      icon: const Icon(Icons.error),
      closeButtonShowType: CloseButtonShowType.onHover,
    );
  }

  static String getUserName(String name) {
    return (name[0] + name[1]).toUpperCase();
  }

  static List<User> getUserFromRoleId({
    required int roleId,
    required List<User> users,
  }) =>
      users.where((user) => user.roleId == roleId).toList();
}