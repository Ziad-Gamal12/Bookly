import 'package:flutter/material.dart';

class TextAinmation extends StatelessWidget {
  const TextAinmation({
    super.key,
    required this.slidinganimation,
  });

  final Animation<double> slidinganimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidinganimation,
        builder: (context, Widget) {
          return FadeTransition(
            opacity: slidinganimation,
            child: const Text(
              "Read free Books ",
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
