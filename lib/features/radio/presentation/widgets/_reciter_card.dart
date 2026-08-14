import 'package:flutter/material.dart';
import 'package:islami/core/gen/assets.gen.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/core/theme/app_spacing.dart';

class ReciterCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: AppColors.gold,
        borderRadius: BorderRadius.circular(AppSpacing.lg),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 75,
              width: double.infinity,
              child: Assets.images.reciterCardMosque.image(fit: BoxFit.cover),
            ),
          ),
          Column(
            children: [
              const SizedBox(height: AppSpacing.md2),
              const Text(
                "Radio Ibrahim Al-Akdar",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 54,
                    height: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27),
                    ),
                    child: const Icon(
                      Icons.play_arrow,
                      color: AppColors.black,
                      size: 44,
                    ),
                  ),

                  SizedBox(width: AppSpacing.sm2),

                  const Icon(
                    Icons.volume_up_rounded,
                    color: AppColors.black,
                    size: 30,
                  ),
                ],
              ),

              SizedBox(height: AppSpacing.sm2),
            ],
          ),
        ],
      ),
    );
  }
}
