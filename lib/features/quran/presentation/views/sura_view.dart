import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/gen/assets.gen.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/features/quran/models/sura_data_model.dart';

class SuraView extends StatefulWidget {
  const SuraView({super.key});

  @override
  State<SuraView> createState() => _SuraViewState();
}

class _SuraViewState extends State<SuraView> {
  @override
  Widget build(BuildContext context) {
    final SuraDataModel suraDataModel =
        ModalRoute.of(context)?.settings.arguments as SuraDataModel;
    if (verses.isEmpty) loadDataFromFiles(suraDataModel.suraNumber);

    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          suraDataModel.suraNameEn,
          style: TextStyle(color: AppColors.gold),
        ),
        iconTheme: IconThemeData(color: AppColors.gold),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Assets.images.imgLeftCorner.image(height: 100, width: 100),
                    Text(
                      suraDataModel.suraNameAr,
                      style: TextStyle(
                        color: AppColors.gold,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Assets.images.imgRightCorner.image(height: 100, width: 100),
                  ],
                ),
              ),
              Spacer(),
              Assets.images.imgBottomDecoration.image(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Text(
                  "${{index + 1}} ${verses[index]}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.gold,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    height: 1.6,
                  ),
                );
              },
              itemCount: verses.length,
            ),
          ),
        ],
      ),
    );
  }

  List<String> verses = [];

  Future<void> loadDataFromFiles(int suraIndex) async {
    String content = await rootBundle.loadString(
      "assets/files/quran/$suraIndex.txt",
    );

    verses = content.split("\n");
    setState(() {});
  }
}
