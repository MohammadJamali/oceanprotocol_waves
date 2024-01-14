import 'package:flutter/material.dart';
import 'package:oceanprotocol_waves/theme/colors.dart';

class AppTheme {
  static final ThemeData light = ThemeData(
    colorScheme: const ColorScheme(
      primary: OceanColors.brandPurple,
      // primaryContainer: OceanColors.brandPurpleLight,
      secondary: OceanColors.brandWink,
      // secondaryContainer: OceanColors.brandViolet,
      surface: OceanColors.brandWhite,
      background: OceanColors.brandGreatLightGrey,
      error: OceanColors.brandAlertRed,
      onPrimary: OceanColors.brandWhite,
      onSecondary: OceanColors.brandBlack,
      onSurface: OceanColors.brandBlack,
      onBackground: OceanColors.brandBlack,
      onError: OceanColors.brandWhite,
      brightness: Brightness.light,
    ),
    fontFamily: 'SharpSans',
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        letterSpacing: 1.5,
        color: Colors.black,
      ),
      displayMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        letterSpacing: 1.25,
        color: Colors.black,
      ),
      displaySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        letterSpacing: 1.25,
        color: Colors.black,
      ),
      headlineMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        letterSpacing: 1.25,
        color: Colors.black,
      ),
      headlineSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        letterSpacing: 1.25,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        letterSpacing: 0.5,
        color: Colors.black87,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        letterSpacing: 0.5,
        color: Colors.black87,
      ),
    ),
  );
}
