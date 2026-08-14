import 'package:flutter/material.dart';
import 'package:islami/core/router/app_routes.dart';
import 'package:islami/core/router/manage_router.dart';
import 'package:islami/core/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initial,
      onGenerateRoute: ManageRouter.generateRoute,
      theme: AppTheme.theme,
    );
  }
}
