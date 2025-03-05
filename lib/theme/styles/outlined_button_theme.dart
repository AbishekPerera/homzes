import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors_constants.dart';

class CustomOutlinedButtonTheme {
  CustomOutlinedButtonTheme._(); //To avoid creating instances

  // Light Theme
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStateProperty.all(
        GoogleFonts.urbanist(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: AppColors.primaryColor, // Use the primary color for text
        ),
      ),
      side: WidgetStateProperty.all(
        const BorderSide(color: AppColors.primaryColor),
      ), // Use the primary color for border
      backgroundColor: WidgetStateProperty.all(
        AppColors.backgroundColor3,
      ), // Transparent background
    ),
  );

  // Dark Theme
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStateProperty.all(
        GoogleFonts.urbanist(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: AppColors.dark100, // Use the dark primary color for text
        ),
      ),
      side: WidgetStateProperty.all(
        const BorderSide(color: AppColors.dark100),
      ), // Use the dark primary color for border
      backgroundColor: WidgetStateProperty.all(
        AppColors.backgroundColor3,
      ), // Transparent background
    ),
  );
}
