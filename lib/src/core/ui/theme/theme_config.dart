import 'package:flutter/material.dart';

import '../helpers/sytles/app_sytle.dart';
import '../helpers/sytles/color_app.dart';
import '../helpers/sytles/text_styles.dart';

class ThemeConfig {
  ThemeConfig._();
  static final _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(7),
    borderSide: BorderSide(
      color: Colors.grey[400]!,
    ),
  );
  static final theme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorApp.instance.primary,
      primary: ColorApp.instance.primary,
      secondary: ColorApp.instance.secundary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: AppSytle.instance.primaryButton,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      isDense: true,
      contentPadding: const EdgeInsets.all(20),
      border: _defaultInputBorder,
      enabledBorder: _defaultInputBorder,
      focusedBorder: _defaultInputBorder,
      labelStyle: TextStyles.instance.textRegular.copyWith(color: Colors.black),
      errorStyle: TextStyles.instance.textRegular.copyWith(
        color: Colors.redAccent,
      ),
    ),
  );
}
