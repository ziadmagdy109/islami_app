import 'package:flutter/material.dart';
import 'package:islami/core/gen/assets.gen.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/features/quran/models/sura_data_model.dart';

class MostRecentlyWidget extends StatelessWidget {
  final SuraDataModel suraDataModel;

  const MostRecentlyWidget({super.key, required this.suraDataModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.gold,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                suraDataModel.suraNameEn,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF191919),
                ),
              ),
              Text(
                suraDataModel.suraNameAr,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF191919),
                ),
              ),
              Text(
                "${suraDataModel.versesCount} versees",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF191919),
                ),
              ),
            ],
          ),
          Assets.images.imgMostRecent.image(),
        ],
      ),
    );
  }
}
