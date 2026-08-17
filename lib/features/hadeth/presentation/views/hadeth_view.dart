import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/gen/assets.gen.dart';
import 'package:islami/features/hadeth/models/hadith_data_model.dart';
import 'package:islami/features/hadeth/presentation/widgets/hadith_item_card.dart';

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  @override
  void initState() {
    super.initState();
    loadDataHadithFromFiles();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.backgroundHadith.provider(),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Assets.images.islamiOnboarding.image(height: 130, width: 290),
          CarouselSlider(
            items: hadithDataList
                .map(
                  (hadithDataModel) =>
                      HadithItemCard(hadithDataModel: hadithDataModel),
                )
                .toList(),
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.70,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }

  List<HadithDataModel> hadithDataList = [];

  Future<void> loadDataHadithFromFiles() async {
    for (int i = 1; i <= 50; i++) {
      final content = await rootBundle.loadString(
        "assets/files/Hadeeth/h$i.txt",
      );

      int titleLenght = content.indexOf("\n");
      final String hadithTitle = content.substring(0, titleLenght);
      final String hadithContent = content.substring(titleLenght + 1);
      final HadithDataModel hadithDataModel = HadithDataModel(
        hadithTitle: hadithTitle,
        hadithContent: hadithContent,
      );
      hadithDataList.add(hadithDataModel);
    }
    setState(() {});
  }
}
