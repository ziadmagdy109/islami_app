import 'package:flutter/material.dart';
import 'package:islami/core/theme/app_colors.dart';

class DatePray extends StatelessWidget {
  const DatePray({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        Text(
          "16 Jul,\n2026",
          style: textTheme.titleMedium?.copyWith(color: AppColors.white),
        ),
        Spacer(),
        Column(
          children: [
            Text(
              "Pray Time",
              style: textTheme.headlineMedium?.copyWith(color: AppColors.black),
            ),
            Text(
              "Tuesday",
              style: textTheme.headlineMedium?.copyWith(color: AppColors.black),
            ),
          ],
        ),
        Spacer(),

        Text(
          "09 Muh,\n1446",
          style: textTheme.titleMedium?.copyWith(color: AppColors.white),
        ),
      ],
    );
  }
}
