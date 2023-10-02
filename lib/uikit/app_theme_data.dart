import 'package:flutter_recipe_app/uikit/color_scheme.dart';

class AppThemeData {
  const AppThemeData({required this.colorScheme});

  factory AppThemeData.light() => AppThemeData(
        colorScheme: AppColorScheme.light(),
      );
  factory AppThemeData.dark() => AppThemeData(
        colorScheme: AppColorScheme.dark(),
      );

  final AppColorScheme colorScheme;
}
