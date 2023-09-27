import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/pages/home_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController = AnimationController(
    duration: const Duration(minutes: 2),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  double shakingAngle() {
    return 0.15 + 0.1 * sin(2 * pi * ((animationController.value * 10) % 1));
  }

  void logIn(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => const HomePage()),
      (route) => false,
    );
  }

  void signIn(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: LayoutBuilder(
          builder: (context, constraints) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: AnimatedBuilder(
                    animation: animationController,
                    builder: (context, child) {
                      final double avaliableSize = max(
                        0,
                        min(
                          constraints.maxWidth,
                          constraints.maxHeight - 132,
                        ),
                      );
                      return Stack(
                        alignment: Alignment.center,
                        children: [
                          Transform.rotate(
                            angle: 2 * pi * animationController.value,
                            child: Transform.translate(
                              offset: Offset(
                                  avaliableSize / 16, avaliableSize / 16),
                              child: SvgPicture.asset(
                                height: avaliableSize,
                                'assets/svg/logo.svg',
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: shakingAngle(),
                            child: Text(
                              'Habr',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 0.1 * avaliableSize),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
              ConstrainedBox(
                constraints: BoxConstraints.loose(const Size.fromWidth(300)),
                child: Column(
                  children: [
                    const SizedBox(height: 32),
                    GestureDetector(
                      onTap: () => logIn(context),
                      child: const SizedBox(
                        height: 48,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(24)),
                            color: Colors.black,
                          ),
                          child: Center(
                            child: Text(
                              'Log in',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    GestureDetector(
                      onTap: () => signIn(context),
                      child: const SizedBox(
                        height: 48,
                        child: Center(
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
