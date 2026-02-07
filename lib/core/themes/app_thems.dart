import 'package:WinWin/core/consts/app_assets.dart';
import 'package:WinWin/core/themes/app_colors.dart';
import 'package:WinWin/core/themes/app_textstyle.dart';
import 'package:flutter/material.dart';

class AppThems {
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
      fillColor: AppColors.white,
      prefixIconColor: AppColors.second,
      suffixIconColor: AppColors.second,
      hintStyle: AppTextStyles.bodyLarge.copyWith(color: AppColors.gray),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: AppColors.accent),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: AppColors.prim1),
        borderRadius: BorderRadius.circular(8),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: AppColors.red),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: AppColors.red),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
}

class AppThemes {
  // --- الألوان الأساسية (تقدر تعدلها من هنا) ---
  static const Color primaryColor = Color(
    0xFF008080,
  ); // الـ Teal الأساسي في التصميم
  static const Color secondaryColor = Color(
    0xFF00BFA5,
  ); // لون أخضر فاتح للـ accents
  static const Color errorColor = Color(0xFFE57373);

  // ألوان الـ Light Mode
  static const Color lightBgColor = Color(0xFFF8F9FA);
  static const Color lightSurfaceColor = Colors.white;
  static const Color lightTextColor = Color(0xFF1A1A1A);

  // ألوان الـ Dark Mode
  static const Color darkBgColor = Color(0xFF121212);
  static const Color darkSurfaceColor = Color(0xFF1E1E1E);
  static const Color darkTextColor = Colors.white;

  // --- Light Theme ---
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: lightBgColor,
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: lightSurfaceColor,
      error: errorColor,
      onPrimary: Colors.white,
      onSurface: lightTextColor,
    ),

    // تنسيق الـ AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: lightSurfaceColor,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: primaryColor),
      titleTextStyle: TextStyle(
        color: lightTextColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Cairo', // يفضل تستخدم خط Cairo للتطبيقات العربية
      ),
    ),

    // تنسيق الأزرار (زي اللي في التصميم rounded)
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          fontFamily: 'Cairo',
        ),
      ),
    ),

    // تنسيق الـ Input Fields (الـ TextFields اللي في الـ Login والـ OTP)
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: primaryColor, width: 2),
      ),
    ),

    // تنسيق النصوص
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: lightTextColor,
        fontWeight: FontWeight.bold,
        fontFamily: 'Cairo',
      ),
      bodyLarge: TextStyle(color: lightTextColor, fontFamily: 'Cairo'),
      bodyMedium: TextStyle(color: Colors.grey, fontFamily: 'Cairo'),
    ),
  );

  // --- Dark Theme ---
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: darkBgColor,
    colorScheme: const ColorScheme.dark(
      primary: primaryColor,
      secondary: secondaryColor,
      surface: darkSurfaceColor,
      error: errorColor,
      onPrimary: Colors.white,
      onSurface: darkTextColor,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: darkSurfaceColor,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: darkTextColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Cairo',
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          fontFamily: 'Cairo',
        ),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF2C2C2C),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: primaryColor, width: 2),
      ),
    ),

    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: darkTextColor,
        fontWeight: FontWeight.bold,
        fontFamily: 'Cairo',
      ),
      bodyLarge: TextStyle(color: darkTextColor, fontFamily: 'Cairo'),
      bodyMedium: TextStyle(color: Colors.white70, fontFamily: 'Cairo'),
    ),
  );
}
