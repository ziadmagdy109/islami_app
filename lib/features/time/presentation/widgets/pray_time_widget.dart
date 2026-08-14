import 'package:flutter/widgets.dart';
import 'package:islami/core/gen/assets.gen.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/core/theme/app_spacing.dart';
import 'package:islami/features/time/presentation/widgets/date_pray.dart';
import 'package:islami/features/time/presentation/widgets/next_pray_widget.dart';
import 'package:islami/features/time/presentation/widgets/prayer_card.dart';

class PrayTimeWidget extends StatelessWidget {
  const PrayTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: AppColors.brownLight,
        borderRadius: BorderRadius.circular(AppSpacing.xxxl),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Assets.images.prayTimeBg.image(
              // width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSpacing.md),
                child: DatePray(),
              ),
              SizedBox(height: AppSpacing.xxl),
              SizedBox(
                height: 128,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: AppSpacing.sm),
                    PrayerCard(name: "Sunrise", time: "01:04", period: "PM"),
                    SizedBox(width: AppSpacing.sm),
                    PrayerCard(name: "Dhuhr", time: "01:01", period: "PM"),
                    SizedBox(width: AppSpacing.sm),
                    PrayerCard(name: "ASR", time: "04:38", period: "PM"),
                    SizedBox(width: AppSpacing.sm),
                    PrayerCard(name: "Maghrib", time: "07:57", period: "PM"),
                    SizedBox(width: AppSpacing.sm),
                    PrayerCard(name: "Isha", time: "09:57", period: "PM"),
                    SizedBox(width: AppSpacing.sm),
                  ],
                ),
              ),
              SizedBox(height: AppSpacing.lg2),
              Padding(
                padding: EdgeInsets.only(right: AppSpacing.xxl),
                child: NextPrayWidget(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
