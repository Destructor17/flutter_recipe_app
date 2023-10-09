import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/uikit/uikit.dart';

class SquareLoadingIndicator extends StatefulWidget {
  const SquareLoadingIndicator({super.key});

  @override
  State<StatefulWidget> createState() => SquareLoadingIndicatorState();
}

class SquareLoadingIndicatorState extends State<SquareLoadingIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController = AnimationController(
    value: Random().nextDouble(),
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat();

  static const double squareSize = 30;
  static const double squareOffset = 5;

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const relativeOffset = 1 + 2 * squareOffset / squareSize;
    final tweens = [
      Tween<Offset>(begin: Offset.zero, end: const Offset(0, relativeOffset)),
      Tween<Offset>(begin: const Offset(relativeOffset, 0), end: Offset.zero),
      Tween<Offset>(
          begin: const Offset(relativeOffset, relativeOffset),
          end: const Offset(relativeOffset, 0)),
      Tween<Offset>(begin: Offset.zero, end: const Offset(relativeOffset, 0)),
    ];
    final animations = tweens.indexed
        .map<Animation<Offset>>(
          (element) => element.$2.animate(
            CurvedAnimation(
              parent: animationController,
              curve: Interval(
                element.$1 / 4,
                (element.$1 + 1) / 4,
                curve: Curves.ease,
              ),
            ),
          ),
        )
        .toList();

    final squares = List<Widget>.generate(
      3,
      (index) => Container(
        height: squareSize,
        width: squareSize,
        color: AppTheme.of(context).colorScheme.accent,
      ),
    );

    for (final element in animations.indexed) {
      squares[element.$1 % 3] =
          SlideTransition(position: element.$2, child: squares[element.$1 % 3]);
    }

    const totalSize = 2 * squareSize + 4 * squareOffset;

    return SizedBox(
      height: totalSize,
      width: totalSize,
      child: Stack(
        children: squares
            .map(
              (square) => Positioned(
                top: squareOffset,
                left: squareOffset,
                child: square,
              ),
            )
            .toList(),
      ),
    );
  }
}
