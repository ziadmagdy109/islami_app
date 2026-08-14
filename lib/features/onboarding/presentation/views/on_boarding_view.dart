import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_strings.dart';
import 'package:islami/core/theme/app_spacing.dart';
import 'package:islami/features/onboarding/presentation/widgets/logo_islami.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:islami/core/gen/assets.gen.dart';
import 'package:islami/core/router/app_routes.dart';
import 'package:islami/core/theme/app_colors.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController controller = PageController();

  int currentPage = 0;

  final List<OnboardingModel> onboardingPages = [
    OnboardingModel(
      image: Assets.images.onboarding1.path,
      title: AppStrings.welcomeToIslamiApp,
    ),
    OnboardingModel(
      image: Assets.images.onboarding2.path,
      title: AppStrings.welcomeToIslami,
      description: AppStrings.weAreVeryExcited,
    ),
    OnboardingModel(
      image: Assets.images.onboarding3.path,
      title: AppStrings.readingTheQuran,
      description: AppStrings.readAndYourLordIsTheMostGenerous,
    ),
    OnboardingModel(
      image: Assets.images.onboarding4.path,
      title: AppStrings.bearish,
      description: AppStrings.praiseTheNameOfYourLord,
    ),
    OnboardingModel(
      image: Assets.images.onboarding5.path,
      title: AppStrings.holyQuranRadio,
      description: AppStrings.youCanListenToTheHolyQuranRadio,
    ),
  ];

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void nextPage() {
    if (currentPage == onboardingPages.length - 1) {
      Navigator.pushReplacementNamed(context, AppRoutes.layout);
    } else {
      controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void backPage() {
    if (currentPage > 0) {
      controller.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Column(
          children: [
            LogoIslami(),
            Expanded(
              child: PageView.builder(
                controller: controller,
                itemCount: onboardingPages.length,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  final page = onboardingPages[index];

                  return Column(
                    children: [
                      Expanded(
                        child: Image.asset(page.image, fit: BoxFit.contain),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        page.title,
                        textAlign: TextAlign.center,
                        style: textTheme.headlineLarge?.copyWith(
                          color: AppColors.gold,
                        ),
                      ),
                      const SizedBox(height: AppSpacing.xxxl),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          page.description ?? '',
                          textAlign: TextAlign.center,
                          style: textTheme.headlineMedium?.copyWith(
                            color: AppColors.gold,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: AppSpacing.xxxl),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: currentPage == 0 ? null : backPage,
                    child: Text(
                      'Back',
                      style: textTheme.labelLarge?.copyWith(
                        color: AppColors.gold,
                      ),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: controller,
                    count: onboardingPages.length,
                    effect: const WormEffect(
                      dotHeight: 8,
                      dotWidth: 8,
                      spacing: 6,
                      activeDotColor: AppColors.gold,
                      dotColor: Colors.grey,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    onPressed: nextPage,
                    child: Text(
                      currentPage == onboardingPages.length - 1
                          ? AppStrings.finish
                          : AppStrings.next,
                      style: textTheme.labelLarge?.copyWith(
                        color: AppColors.gold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class OnboardingModel {
  final String image;
  final String title;
  final String? description;

  OnboardingModel({required this.image, required this.title, this.description});
}
