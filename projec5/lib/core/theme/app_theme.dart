import 'package:flutter/material.dart';
import 'package:projec5/core/text/text_styles.dart';
import 'package:projec5/core/theme/app_palette.dart';

class AppTheme {
  static final theme = ThemeData(
    scaffoldBackgroundColor: AppPalette.whiteColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppPalette.greenColor,
        foregroundColor: AppPalette.whiteColor,
        textStyle: TextStyles.inter70015,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: getBorder(AppPalette.greenColor),
      enabledBorder: getBorder(AppPalette.lightGray),
      hintStyle: TextStyles.inter50015,
    ),
  );
  static OutlineInputBorder getBorder(Color? borderColor) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(32),
      borderSide: BorderSide(color: borderColor!, width: 1),
      gapPadding: 10,
    );
  }
}
