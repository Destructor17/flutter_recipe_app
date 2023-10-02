import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/pages/login_page.dart';
import 'package:flutter_recipe_app/uikit/uikit.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      builder: (context, theme) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'SFProText',
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: Colors.blueGrey,
          ),
        ),
        home: const LoginPage(),
      ),
    );
  }
}
