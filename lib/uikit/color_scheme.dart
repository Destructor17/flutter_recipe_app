import 'package:flutter/material.dart';

class AppColorScheme {
  const AppColorScheme({
    required this.accent,
    required this.background,
    required this.text,
  });

  factory AppColorScheme.light() => AppColorScheme(
        accent: Colors.blueGrey.shade500,
        background: Colors.white,
        text: Colors.black,
      );
  factory AppColorScheme.dark() => AppColorScheme(
        accent: Colors.blueGrey.shade300,
        background: Colors.black,
        text: Colors.white,
      );

  final Color accent;
  final Color background;
  final Color text;
}
