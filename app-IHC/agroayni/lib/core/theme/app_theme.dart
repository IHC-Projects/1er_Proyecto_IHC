import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        tertiary: AppColors.tertiary,
        surface: AppColors.surface,
        onSurface: AppColors.neutral,
      ),
      scaffoldBackgroundColor: AppColors.surface,
      textTheme: GoogleFonts.atkinsonHyperlegibleTextTheme().copyWith(
        displayLarge: GoogleFonts.atkinsonHyperlegible(
          color: AppColors.neutral,
          fontWeight: FontWeight.bold,
        ),
        titleLarge: GoogleFonts.atkinsonHyperlegible(
          color: AppColors.primary,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: GoogleFonts.atkinsonHyperlegible(
          color: AppColors.textBody,
        ),
        bodyMedium: GoogleFonts.atkinsonHyperlegible(
          color: AppColors.textBody,
        ),
        labelLarge: GoogleFonts.atkinsonHyperlegible(
          color: AppColors.neutral,
          fontWeight: FontWeight.w600,
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.surface,
        foregroundColor: AppColors.primary,
        elevation: 0,
        centerTitle: false,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.surfaceWhite,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.neutral,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
      ),
    );
  }
}
