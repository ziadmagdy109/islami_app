import 'package:flutter/material.dart';
import 'package:islami/core/gen/assets.gen.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/features/quran/models/sura_data_model.dart';

class SurasListWidget extends StatelessWidget {
  final void Function()? onTap;
  final SuraDataModel suraDataModel;

  const SurasListWidget({
    super.key,
    required this.onTap,
    required this.suraDataModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            height: 45,
            width: 45,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(image: Assets.images.vector.provider()),
            ),
            child: Text(
              suraDataModel.suraNumber.toString(),
              style: TextStyle(color: AppColors.white),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                suraDataModel.suraNameEn,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight(700),
                ),
              ),
              Text(
                "${suraDataModel.versesCount} verses",
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 12,
                  fontWeight: FontWeight(700),
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            suraDataModel.suraNameAr,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 16,
              fontWeight: FontWeight(700),
            ),
          ),
        ],
      ),
    );
  }
}
