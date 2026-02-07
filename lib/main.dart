import 'package:WinWin/core/themes/app_thems.dart';
import 'package:flutter/material.dart';
import 'package:WinWin/core/routes/routes_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppThemes.lightTheme,
      debugShowCheckedModeBanner: false,
      //! routes file
      routerConfig: AppRoutes.routes,
    );
  }
}
