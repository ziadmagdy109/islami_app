import 'package:flutter/material.dart';
import 'package:islami/core/gen/assets.gen.dart';
import 'package:islami/core/theme/app_spacing.dart';
import 'package:islami/features/onboarding/presentation/widgets/logo_islami.dart';
import 'package:islami/features/radio/presentation/widgets/_reciter_card.dart';
import 'package:islami/features/radio/presentation/widgets/radio_or_reciter_widget.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Stack(
      children: [
        Positioned.fill(child: Assets.images.radioBg.image(fit: BoxFit.cover)),
        SafeArea(
          child: Column(
            children: [
              const LogoIslami(),
              const SizedBox(height: AppSpacing.lg),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.md2),
                child: RadioOrReciterWidget(textTheme: textTheme),
              ),
              const SizedBox(height: AppSpacing.lg),
              Expanded(
                child: ScrollConfiguration(
                  behavior: const MaterialScrollBehavior().copyWith(
                    overscroll: false,
                  ),
                  child: ListView.separated(
                    physics: const ClampingScrollPhysics(),
                    padding: const EdgeInsets.only(
                      bottom: AppSpacing.md2,
                      left: AppSpacing.md2,
                      right: AppSpacing.md2,
                    ),
                    itemCount: 6,
                    separatorBuilder: (_, _) =>
                        SizedBox(height: AppSpacing.md2),
                    itemBuilder: (context, index) {
                      return ReciterCard();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
