import 'package:flutter/material.dart';
import 'package:islami/core/gen/assets.gen.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/features/hadeth/models/hadith_data_model.dart';
import 'package:islami/features/hadeth/presentation/widgets/hadith_back_ground.dart';
import 'package:islami/features/hadeth/presentation/widgets/hadith_content.dart';

class HadithItemCard extends StatelessWidget {
  final HadithDataModel hadithDataModel;
  const HadithItemCard({super.key, required this.hadithDataModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.70,
      decoration: BoxDecoration(
        color: AppColors.gold,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: Assets.images.hadithCardBack.provider()),
      ),
      child: Stack(
        children: [
          HadithBackGround(),
          HadithContent(hadithDataModel: hadithDataModel),
        ],
      ),
    );
  }
}
