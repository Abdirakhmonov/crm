import 'package:flutter/material.dart';

extension SizedBoxExtension on int {
  Widget get sizedBoxH => SizedBox(height: toDouble());

  Widget get sizedBoxW => SizedBox(width: toDouble());
}

extension StringExtension on String {
  String get capitalize => "${this[0].toUpperCase()}${substring(1)}";
}
