import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_scanner/core/constants/app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Poppins',
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primaryColor,
      onPrimary: Colors.white,
      primaryContainer: AppColors.primarySurfaceLight,
      secondary: AppColors.secondaryColor,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      surface: Colors.white,
      onSurface: Colors.black,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: AppColors.primaryColor,
      suffixIconColor: AppColors.primaryColor,
      labelStyle: TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      fillColor: Colors.white.withValues(alpha: 0.7),
      filled: true,
      contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      hintStyle: TextStyle().copyWith(color: Colors.black, fontSize: 14),
      errorStyle: TextStyle().copyWith(color: Colors.red),
      border: OutlineInputBorder().copyWith(
        borderSide: BorderSide(color: AppColors.darkGrey),
        borderRadius: BorderRadius.circular(8),
      ),
      enabledBorder: OutlineInputBorder().copyWith(
        borderSide: BorderSide(
          color: AppColors.darkGrey.withValues(alpha: 0.5),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder().copyWith(
        borderSide: BorderSide(color: AppColors.primaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      errorBorder: OutlineInputBorder().copyWith(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedErrorBorder: OutlineInputBorder().copyWith(
        borderSide: BorderSide(color: Colors.orange),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.darkBackground,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.darkPrimaryColor,
    ),
    fontFamily: 'Poppins',
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.darkPrimaryColor,
      onPrimary: Colors.white,
      primaryContainer: AppColors.primarySurfaceDark,
      secondary: AppColors.secondaryDark,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      surface: AppColors.darkBackground,
      onSurface: Colors.white,
      outline: AppColors.darkGrey,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkBackground,
      foregroundColor: Colors.white,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.darkPrimaryColor,
        foregroundColor: Colors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: AppColors.darkPrimaryColor,
      suffixIconColor: AppColors.darkPrimaryColor,
      labelStyle: TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      fillColor: Colors.white.withValues(alpha: 0.7),
      filled: true,
      contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      hintStyle: TextStyle().copyWith(color: Colors.black, fontSize: 14),
      errorStyle: TextStyle().copyWith(color: Colors.red),
      border: OutlineInputBorder().copyWith(
        borderSide: BorderSide(color: AppColors.darkGrey),
        borderRadius: BorderRadius.circular(8),
      ),
      enabledBorder: OutlineInputBorder().copyWith(
        borderSide: BorderSide(
          color: AppColors.darkGrey.withValues(alpha: 0.5),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedBorder: OutlineInputBorder().copyWith(
        borderSide: BorderSide(color: AppColors.darkPrimaryColor),
        borderRadius: BorderRadius.circular(8),
      ),
      errorBorder: OutlineInputBorder().copyWith(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.circular(8),
      ),
      focusedErrorBorder: OutlineInputBorder().copyWith(
        borderSide: BorderSide(color: Colors.orange),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
}
