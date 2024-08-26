import 'package:flutter/material.dart';

class DeviceScreen {
  static double w(BuildContext context) => MediaQuery.of(context).size.width;

  static double h(BuildContext context) => MediaQuery.of(context).size.height;
}
