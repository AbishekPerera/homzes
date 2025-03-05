import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homzes/constants/colors_constants.dart';

class CustomElevatedButtonTheme {
  CustomElevatedButtonTheme._(); // To avoid creating instances

  // Light Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      textStyle: GoogleFonts.urbanist(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
    ),
  );

  // Dark Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.dark100,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      textStyle: GoogleFonts.urbanist(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
    ),
  );
}
