import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/uikit/color_scheme.dart';

class MaterialTheme {
  MaterialTheme._();

  static ThemeData get lightTheme => materialTheme(
        colorScheme: AppColorScheme.light(),
        brightness: Brightness.light,
      );

  static ThemeData get darkTheme => materialTheme(
        colorScheme: AppColorScheme.dark(),
        brightness: Brightness.dark,
      );

  static ThemeData materialTheme({
    required AppColorScheme colorScheme,
    required Brightness brightness,
  }) {
    return ThemeData(
      brightness: brightness,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    );
  }
}
