import 'package:WinWin/core/consts/app_assets.dart';
import 'package:WinWin/core/consts/app_const.dart';
import 'package:WinWin/core/themes/app_colors.dart';
import 'package:WinWin/core/themes/app_textstyle.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.light_bg,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.white,
      foregroundColor: AppColors.white,
      surfaceTintColor: Colors.transparent,
      titleTextStyle: AppTextStyles.headlineSmall,
    ),

    colorScheme: ColorScheme.light(
      primary: AppColors.prim1,
      surface: AppColors.light_bg,
      onPrimary: Colors.white,
      onSurface: AppColors.black,
    ),

    fontFamily: AppFonts.Raleway, //* default font family
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.white,
      showUnselectedLabels: false,
      showSelectedLabels: false,
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        foregroundColor: AppColors.black,
      ),
    ),
    datePickerTheme: DatePickerThemeData(backgroundColor: Colors.white),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.hover1,
      prefixIconColor: AppColors.hover2,
      suffixIconColor: AppColors.hover2,
      hintStyle: AppTextStyles.bodyLarge.copyWith(color: AppColors.gray),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 0.1, color: AppColors.accent),
        borderRadius: AppConsts.raduis_medium,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: AppColors.prim1),
        borderRadius: AppConsts.raduis_medium,
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: AppColors.red),
        borderRadius: AppConsts.raduis_medium,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: AppColors.red),
        borderRadius: AppConsts.raduis_medium,
      ),
    ),
  );
}
