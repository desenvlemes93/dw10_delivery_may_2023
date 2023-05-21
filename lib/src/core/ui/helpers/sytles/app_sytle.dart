import 'package:flutter/material.dart';

import 'color_app.dart';
import 'text_styles.dart';

class AppSytle {
  static AppSytle? _instance;
  // Avoid self isntance
  AppSytle._();
  static AppSytle get instance {
    _instance ??= AppSytle._();
    return _instance!;
  }

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        backgroundColor: ColorApp.instance.primary,
        textStyle: TextStyles.instance.textButtonLabel,
      );
}

extension AppStylesExtension on BuildContext {
  AppSytle get appSytle => AppSytle.instance;
}
