import 'package:flutter/material.dart';
import 'package:learnfy/core/theme/app_colors.dart';
import 'package:learnfy/core/theme/app_text_styles.dart';

class AppTheme {
  static ThemeData lightMode = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      backgroundColor: AppColors.white,
    ),
    scaffoldBackgroundColor: AppColors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary90, // Button color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Pill shape
        ),
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 24,
        ),
        elevation: 0.0,
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.black5,
      contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: AppColors.black10, width: 1.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(color: AppColors.black10, width: 1.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primary90, width: 2.0),
        borderRadius: BorderRadius.circular(12.0),
      ),
    ),
    tabBarTheme: TabBarThemeData(
      dividerColor: AppColors.black5,
      dividerHeight: 2.0,
      indicatorColor: AppColors.primary90,
      indicatorSize: TabBarIndicatorSize.tab,
      labelStyle: AppTextStyles.heading6,
      unselectedLabelStyle: AppTextStyles.bodyLargeMedium,
      indicator: BoxDecoration(
        color: AppColors.white,
        border: Border(
          bottom: BorderSide(color: AppColors.primary90, width: 2.0),
        ),
      ),
    ),
  );
}
