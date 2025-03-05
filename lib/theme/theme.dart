import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homzes/constants/colors_constants.dart';
import 'package:homzes/theme/styles/elevated_button_theme.dart';
import 'package:homzes/theme/styles/outlined_button_theme.dart';

class AppTheme {
  static TextTheme _textTheme(Brightness brightness) {
    return TextTheme(
      // For large banner like text
      displayLarge: GoogleFonts.robotoFlex(
        fontSize: 36,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: GoogleFonts.robotoFlex(
        fontSize: 32,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: GoogleFonts.robotoFlex(fontSize: 18, color: Colors.white),
      // For normal text heading
      headlineLarge: GoogleFonts.robotoFlex(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headlineMedium: GoogleFonts.robotoFlex(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      headlineSmall: GoogleFonts.robotoFlex(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      // For normal text
      titleLarge: GoogleFonts.robotoFlex(fontSize: 18, color: Colors.black),
      titleMedium: GoogleFonts.robotoFlex(fontSize: 16, color: Colors.black),
      titleSmall: GoogleFonts.robotoFlex(fontSize: 14, color: Colors.black),
      // For labels text
      labelLarge: GoogleFonts.robotoFlex(
        fontSize: 18,
        color: AppColors.dark80,
        letterSpacing: 0,
      ),
      labelMedium: GoogleFonts.roboto(
        fontSize: 16,
        color: AppColors.dark80,
        letterSpacing: 0,
      ),
      labelSmall: GoogleFonts.robotoFlex(
        fontSize: 14,
        color: AppColors.dark80,
        letterSpacing: 0,
      ),
      // For normal text
      bodyLarge: GoogleFonts.robotoFlex(fontSize: 16),
      bodyMedium: GoogleFonts.robotoFlex(fontSize: 14),
      bodySmall: GoogleFonts.robotoFlex(fontSize: 12),
    );
  }

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    iconTheme: const IconThemeData(color: AppColors.primaryColor),
    elevatedButtonTheme: CustomElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: CustomOutlinedButtonTheme.lightOutlinedButtonTheme,
    textTheme: _textTheme(Brightness.light),
    primarySwatch: const MaterialColor(0xFF47AE60, {
      50: Color(0xFFE3F4E8), // Light green
      100: Color(0xFFB9E4C5), // Lighter green
      200: Color(0xFF8CD3A0), // Medium light green
      300: Color(0xFF5FC27B), // Neutral green
      400: Color(0xFF3FBF63), // Slightly darker green
      500: Color(0xFF47AE60), // Primary green
      600: Color(0xFF3E9E56), // Darker green
      700: Color(0xFF358D4C), // Near black-green
      800: Color(0xFF2C7C42), // Dark green
      900: Color(0xFF1C5B30), // True black-green
    }),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    elevatedButtonTheme: CustomElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: CustomOutlinedButtonTheme.darkOutlinedButtonTheme,
    textTheme: _textTheme(Brightness.dark),
    primarySwatch: const MaterialColor(0xFF47AE60, {
      50: Color(0xFF1C5B30), // Dark green
      100: Color(0xFF2C7C42), // Near black-green
      200: Color(0xFF358D4C), // Darker green
      300: Color(0xFF3E9E56), // Slightly darker green
      400: Color(0xFF47AE60), // Primary green
      500: Color(0xFF5FC27B), // Neutral green
      600: Color(0xFF8CD3A0), // Medium light green
      700: Color(0xFFB9E4C5), // Lighter green
      800: Color(0xFFE3F4E8), // Light green
      900: Color(0xFFFFFFFF), // True white-green
    }),
  );
}
