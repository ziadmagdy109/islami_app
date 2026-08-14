import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/core/theme/app_radius.dart';
import 'package:islami/core/theme/app_spacing.dart';

class PrayerCard extends StatelessWidget {
  const PrayerCard({
    super.key,
    required this.name,
    required this.time,
    required this.period,
  });
  final String name;
  final String time;
  final String period;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      height: 128,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.lg3),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.blackLight, AppColors.brownMoreLight],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppSpacing.md2),
        child: Column(
          children: [
            Text(
              name,
              style: textTheme.titleMedium?.copyWith(color: AppColors.white),
            ),
            SizedBox(height: AppSpacing.sm),
            Text(
              time,
              style: textTheme.displayLarge?.copyWith(color: AppColors.white),
            ),
            SizedBox(height: AppSpacing.sm),
            Text(
              period,
              style: textTheme.titleMedium?.copyWith(color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
