import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_strings.dart';
import 'package:islami/core/gen/assets.gen.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/core/theme/app_radius.dart';
import 'package:islami/core/theme/app_spacing.dart';

class AzkarWidget extends StatelessWidget {
  const AzkarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: AppColors.blackLight,
        borderRadius: BorderRadius.circular(AppRadius.lg3),
        border: Border.all(color: AppColors.gold, width: 3),
      ),
      child: Column(
        children: [
          SizedBox(height: AppSpacing.lg),
          Assets.images.azkarMorning.image(),
          SizedBox(height: AppSpacing.lg),
          Text(
            AppStrings.morningAzkar,
            style: textTheme.headlineMedium?.copyWith(color: AppColors.white),
          ),
        ],
      ),
    );
  }
}
