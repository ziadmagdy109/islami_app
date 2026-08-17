import 'package:flutter/material.dart';
import 'package:islami/core/gen/assets.gen.dart';
import 'package:islami/core/theme/app_colors.dart';

class HadithBackGround extends StatelessWidget {
  const HadithBackGround({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Assets.images.imgLeftCorner.image(
                height: 90,
                width: 90,
                color: AppColors.black,
              ),

              Assets.images.imgRightCorner.image(
                height: 90,
                width: 90,
                color: AppColors.black,
              ),
            ],
          ),
        ),
        Spacer(),
        Assets.images.imgBottomDecoration.image(color: AppColors.black),
      ],
    );
  }
}
