import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_strings.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/core/theme/app_spacing.dart';

class RadioOrReciterWidget extends StatelessWidget {
  const RadioOrReciterWidget({super.key, required this.textTheme});

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: AppColors.black.withValues(alpha: 0.35),
        borderRadius: BorderRadius.circular(AppSpacing.sm2),
      ),
      child: Row(
        children: [
          // Radio
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.gold,
                borderRadius: BorderRadius.circular(AppSpacing.sm2),
              ),
              child: Text(
                AppStrings.radio,
                style: textTheme.titleMedium?.copyWith(color: AppColors.black),
              ),
            ),
          ),

          // Reciters
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                AppStrings.reciters,
                style: textTheme.titleMedium?.copyWith(color: AppColors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
