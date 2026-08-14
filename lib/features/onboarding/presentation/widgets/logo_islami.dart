import 'package:flutter/material.dart';
import 'package:islami/core/gen/assets.gen.dart';

class LogoIslami extends StatelessWidget {
  const LogoIslami({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Assets.images.islamiOnboarding.image(height: 170, width: 290),
    );
  }
}
