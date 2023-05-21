import 'package:flutter/cupertino.dart';

class ColorApp {
  static ColorApp? _instance;

  ColorApp._();
  static ColorApp get instance {
    _instance ??= ColorApp._();
    return _instance!;
  }

//0XFF007F21 0XFFFFAB18 0XFF140E0E
  Color get primary => const Color(0XFF007F21);
  Color get secundary => const Color(0XFFFFAB18);
  Color get black => const Color(0XFF140E0E);
}

extension ColorsAppExceptions on BuildContext {
  ColorApp get colors => ColorApp.instance;
}
