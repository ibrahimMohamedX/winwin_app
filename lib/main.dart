import 'package:flutter/material.dart';
import 'package:winwin_app/core/routes/routes_data.dart';
import './core/utils/themes_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemesData.lightTheme,
      debugShowCheckedModeBanner: false,
      //! routes file
      routerConfig: RoutesData.routes,
    );
  }
}
