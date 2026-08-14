import 'package:flutter/material.dart';
import 'package:islami/core/gen/assets.gen.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/core/theme/app_spacing.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
  int currentCount = 30;
  int currentTasbeehIndex = 0;

  double rotation = 0;

  final List<String> tasbeeh = [
    'استغفر الله',
    'لا اله الا الله ',
    'سبحان الله',
    'الحمد لله',
    'الله أكبر',
  ];

  void onSebhaTap() {
    setState(() {
      rotation += 0.03;

      if (currentCount > 0) {
        currentCount--;
      }

      if (currentCount == 0) {
        currentTasbeehIndex = (currentTasbeehIndex + 1) % tasbeeh.length;

        currentCount = 30;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Stack(
      children: [
        // Background
        Positioned.fill(child: Assets.images.sebhaBg.image(fit: BoxFit.cover)),

        SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Logo
                  Assets.images.logoIslami.image(
                    width: 166,
                    height: 96,
                    fit: BoxFit.contain,
                  ),

                  const SizedBox(height: AppSpacing.lg),

                  // Ayah
                  Text(
                    'سَبِّحِ اسْمَ رَبِّكَ الأعلى',
                    textAlign: TextAlign.center,
                    style: textTheme.displaySmall?.copyWith(
                      color: AppColors.white,
                    ),
                  ),

                  const SizedBox(height: 40),

                  // Sebha
                  GestureDetector(
                    onTap: onSebhaTap,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        AnimatedRotation(
                          turns: rotation,
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.easeOut,
                          child: Assets.images.sebhaBody.image(
                            fit: BoxFit.contain,
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AnimatedSwitcher(
                              duration: const Duration(milliseconds: 250),
                              transitionBuilder: (child, animation) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: child,
                                );
                              },
                              child: Text(
                                tasbeeh[currentTasbeehIndex],
                                key: ValueKey(tasbeeh[currentTasbeehIndex]),
                                style: textTheme.displaySmall?.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: AppSpacing.sm2),
                            AnimatedSwitcher(
                              duration: const Duration(milliseconds: 200),
                              transitionBuilder: (child, animation) {
                                return ScaleTransition(
                                  scale: animation,
                                  child: child,
                                );
                              },
                              child: Text(
                                '$currentCount',
                                key: ValueKey(currentCount),
                                style: textTheme.displaySmall?.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
