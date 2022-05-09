import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray500 = fromHex('#9e9e9e');

  static Color black900Dd = fromHex('#dd000000');

  static Color black90099 = fromHex('#99000000');

  static Color black900 = fromHex('#000000');

  static Color black90060 = fromHex('#60000000');

  static Color bluegray400 = fromHex('#888888');

  static Color orange800 = fromHex('#f66603');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
