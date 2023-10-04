import 'package:flutter/material.dart';
import 'dart:math';

/// Styles que define todas as cores do design system
class AppColorStyles {
  late MaterialColor materialPrimary;
  late MaterialColor materialSecondary;
  late MaterialColor materialWarning;
  late MaterialColor materialDanger;
  late MaterialColor materialNeutral;

  AppColorStyles._();

  static final instance = AppColorStyles._();

  void initAppColorStyles({
    required primary,
    required secondary,
    required warning,
    required danger,
    required neutral,
  }) {
    materialPrimary = from(primary);
    materialSecondary = from(secondary);
    materialWarning = from(warning);
    materialDanger = from(danger);
    materialNeutral = from(neutral);
  }

  //Recebe uma cor, exemplo a primária, e gera o MaterialColor com todas suas variações
  MaterialColor from(Color color) {
    return MaterialColor(color.value, {
      50: tintColor(color, 0.9),
      100: tintColor(color, 0.8),
      200: tintColor(color, 0.6),
      300: tintColor(color, 0.4),
      400: tintColor(color, 0.2),
      500: color,
      600: shadeColor(color, 0.1),
      700: shadeColor(color, 0.2),
      800: shadeColor(color, 0.3),
      900: shadeColor(color, 0.4),
    });
  }

  //Cores padrões
  Color white = Color(0xFFFFFFFF);
  Color black = Color(0xFF000000);

  int tintValue(int value, double factor) =>
      max(0, min((value + ((255 - value) * factor)).round(), 255));

  Color tintColor(Color color, double factor) => Color.fromRGBO(
      tintValue(color.red, factor),
      tintValue(color.green, factor),
      tintValue(color.blue, factor),
      1);

  int shadeValue(int value, double factor) =>
      max(0, min(value - (value * factor).round(), 255));

  Color shadeColor(Color color, double factor) => Color.fromRGBO(
      shadeValue(color.red, factor),
      shadeValue(color.green, factor),
      shadeValue(color.blue, factor),
      1);
}
