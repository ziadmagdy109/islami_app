import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_strings.dart';
import 'package:islami/core/gen/assets.gen.dart';
import 'package:islami/core/theme/app_colors.dart';
import 'package:islami/features/hadeth/presentation/views/hadeth_view.dart';
import 'package:islami/features/quran/presentation/views/quran_view.dart';
import 'package:islami/features/radio/presentation/views/radio_view.dart';
import 'package:islami/features/sebha/presentation/views/sebha_view.dart';
import 'package:islami/features/time/presentation/views/time_view.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          QuranView(),
          HadethView(),
          SebhaView(),
          RadioView(),
          TimeView(),
        ],
      ),
      backgroundColor: AppColors.black,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.gold,
        selectedItemColor: AppColors.white,

        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Assets.icons.icQuran.svg(),
            label: AppStrings.quran,
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.icHadeth.svg(),
            label: AppStrings.hadeth,
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.icSebha.svg(),
            label: AppStrings.sebha,
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.icRadio.svg(),
            label: AppStrings.radio,
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.icTime.svg(),
            label: AppStrings.time,
          ),
        ],
      ),
    );
  }
}
