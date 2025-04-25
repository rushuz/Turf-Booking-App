import 'package:flutter/material.dart';

class AppColors {
  static const Color navyBlue = Color(0xFF102A43); // Deep navy
  static const Color lightBackground = Color(0xFFF9FAFB); // Soft off-white
  static const Color textPrimary = Color(0xFF1F2937); // Rich gray-blue
  static const Color surface = Color(0xFFFFFFFF);
  static var greenAccent;
}

class AppTheme {
  static final ThemeData baseLight = ThemeData.light();

  static ThemeData lightTheme = baseLight.copyWith(
    brightness: Brightness.light,
    primaryColor: AppColors.greenAccent,
    scaffoldBackgroundColor: AppColors.lightBackground,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.greenAccent,
      titleTextStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      elevation: 2,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(fontSize: 18, color: AppColors.textPrimary),
      bodyMedium: TextStyle(fontSize: 16, color: AppColors.textPrimary),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.navyBlue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        elevation: 4,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.surface,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    ),
    drawerTheme: DrawerThemeData(backgroundColor: AppColors.surface),
    cardColor: AppColors.surface,
  );

  static ThemeData darkTheme = lightTheme;
}
