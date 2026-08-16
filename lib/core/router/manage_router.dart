import 'package:flutter/material.dart';
import 'package:islami/core/router/app_routes.dart';
import 'package:islami/features/layout/presentation/views/layout_view.dart';
import 'package:islami/features/onboarding/presentation/views/on_boarding_view.dart';
import 'package:islami/features/quran/presentation/views/sura_view.dart';
import 'package:islami/features/splash/splash_view.dart';

class ManageRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.initial:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
          settings: settings,
        );
      case AppRoutes.onboarding:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
          settings: settings,
        );
      case AppRoutes.layout:
        return MaterialPageRoute(
          builder: (_) => const LayoutView(),
          settings: settings,
        );
      case AppRoutes.sura:
        return MaterialPageRoute(
          builder: (_) => const SuraView(),
          settings: settings,
        );
      case AppRoutes.quran:
      case AppRoutes.hadith:
      case AppRoutes.tasbeeh:
      case AppRoutes.radio:
      case AppRoutes.time:
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
