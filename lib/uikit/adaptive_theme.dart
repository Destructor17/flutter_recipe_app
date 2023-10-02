import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:flutter_recipe_app/uikit/uikit.dart';

typedef AdaptiveThemeBuilder = Widget Function(
  BuildContext context,
  AppThemeData theme,
);

class AdaptiveTheme extends StatefulWidget {
  const AdaptiveTheme({
    required this.builder,
    Key? key,
  }) : super(key: key);
  final AdaptiveThemeBuilder builder;

  @override
  State<AdaptiveTheme> createState() => _AdaptiveThemeState();

  static AppThemeColorMode colorModeOf(BuildContext context) {
    final platformBrightness =
        View.of(context).platformDispatcher.platformBrightness;
    final useDarkTheme = platformBrightness == Brightness.dark;
    if (useDarkTheme) {
      return AppThemeColorMode.dark;
    }

    return AppThemeColorMode.light;
  }
}

class _AdaptiveThemeState extends State<AdaptiveTheme> {
  var theme = AppThemeData.light();

  void updateBrightness() {
    final colorMode = AdaptiveTheme.colorModeOf(context);
    switch (colorMode) {
      case AppThemeColorMode.dark:
        setState(() => theme = AppThemeData.dark());
        break;
      case AppThemeColorMode.light:
        setState(() => theme = AppThemeData.light());
        break;
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    View.of(context).platformDispatcher.onPlatformBrightnessChanged =
        updateBrightness;
    updateBrightness();
  }

  @override
  Widget build(BuildContext context) {
    return AppTheme(
      theme: theme,
      child: widget.builder(context, theme),
    );
  }
}

enum AppThemeColorMode {
  light,
  dark,
}
