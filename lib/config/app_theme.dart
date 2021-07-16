import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData of(BuildContext context) {
    final theme = Theme.of(context);

    return theme.copyWith(
      primaryColor: AppColor.primaryColor,
      accentColor: AppColor.accentColor,
    );
  }
}

class AppColor {
  static const Color primaryColor = Colors.red;
  static const Color accentColor = Color(0xFFFEF9EB);
}
