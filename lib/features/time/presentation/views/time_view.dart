import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_strings.dart';
import 'package:islami/core/gen/assets.gen.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/core/theme/app_spacing.dart';
import 'package:islami/features/time/presentation/widgets/azkar_widget.dart';
import 'package:islami/features/time/presentation/widgets/pray_time_widget.dart';

class TimeView extends StatelessWidget {
  const TimeView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Stack(
      children: [
        Assets.images.timeBg.image(fit: BoxFit.cover),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg3),
          child: SafeArea(
            child: Column(
              children: [
                Assets.images.logoIslamiDrawTime.image(
                  height: 170,
                  width: 290,
                  fit: BoxFit.contain,
                ),
                PrayTimeWidget(),
                SizedBox(height: AppSpacing.lg3),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppStrings.azkar,
                    style: textTheme.titleMedium?.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
                SizedBox(height: AppSpacing.lg3),
                Expanded(
                  child: ScrollConfiguration(
                    behavior: const MaterialScrollBehavior().copyWith(
                      overscroll: false,
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: AppSpacing.lg3,
                        mainAxisSpacing: AppSpacing.lg3,
                        childAspectRatio: 0.7,
                      ),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return AzkarWidget();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
