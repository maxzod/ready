import 'package:flutter/material.dart';
import 'package:ready/ready.dart';

class AnimatedScopeItemsExample extends StatelessWidget {
  const AnimatedScopeItemsExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedItemsScope(
      delay: const Duration(seconds: 1),
      child: GridView.count(
        crossAxisCount: 5,
        padding: const EdgeInsets.all(20),
        children: [
          for (var type in FlipType.values)
            Animated(transforms: [FlipAnimation(type)], child: const Card()),
          Animated(
              transforms: const [ScaleAnimation.scale()], child: const Card()),
          Animated(transforms: const [ScaleAnimation.y()], child: const Card()),
          Animated(transforms: const [ScaleAnimation.x()], child: const Card()),
          Animated(transforms: const [ScaleAnimation.z()], child: const Card()),
          Animated(
              transforms: const [TranslateAnimation.y(300)],
              child: const Card()),
          Animated(
              transforms: const [TranslateAnimation.x(300)],
              child: const Card()),
          Animated(
              transforms: const [TranslateAnimation.z(300)],
              child: const Card()),
          Animated(fade: const FadeAnimation(), child: const Card()),
        ],
      ),
    );
  }
}

class AnimatedItemsExample extends StatelessWidget {
  const AnimatedItemsExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(20),
      crossAxisCount: 5,
      children: [
        for (var type in FlipType.values)
          Animated(transforms: [FlipAnimation(type)], child: const Card()),
        Animated(
            transforms: const [ScaleAnimation.scale()], child: const Card()),
        Animated(transforms: const [ScaleAnimation.y()], child: const Card()),
        Animated(transforms: const [ScaleAnimation.x()], child: const Card()),
        Animated(transforms: const [ScaleAnimation.z()], child: const Card()),
        Animated(
            transforms: const [TranslateAnimation.y(300)], child: const Card()),
        Animated(
            transforms: const [TranslateAnimation.x(300)], child: const Card()),
        Animated(
            transforms: const [TranslateAnimation.z(300)], child: const Card()),
        Animated(fade: const FadeAnimation(), child: const Card()),
      ],
    );
  }
}
