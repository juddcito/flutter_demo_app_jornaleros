import 'package:flutter/material.dart';
import 'package:flutter_demo_app_jornaleros/config/router/app_router.dart';
import 'package:flutter_demo_app_jornaleros/config/theme/app_theme.dart';
import 'package:flutter_demo_app_jornaleros/locator.dart';

void main() {
  setupServices();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme()
    );
  }
}
