import 'package:assignment7/core/text/text_styles.dart';
import 'package:assignment7/core/theme/app_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    fontFamily: 'Rubik',
    scaffoldBackgroundColor: AppPalette.whiteColor,

    //AppBAR THEME
    appBarTheme: AppBarTheme(
      backgroundColor: AppPalette.whiteColor,
      centerTitle: true,
      titleTextStyle: TextStyles.rubikMedium1,
    ),

    //Text Theme
    textTheme: TextTheme(
      titleLarge: TextStyles.rubikBoold,

      bodyMedium: TextStyles.rubikMedium1,
      bodySmall: TextStyles.rubikSmall400,
      bodyLarge: TextStyles.rubikSmall16,
    ),
    //TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(AppPalette.textColor2),
        textStyle: WidgetStateProperty.all(TextStyles.rubikMedium14),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        ),
        fixedSize: WidgetStateProperty.all(Size(343.w, 56.h)),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        backgroundColor: WidgetStateProperty.all(AppPalette.buttonColor),
        foregroundColor: WidgetStateProperty.all(AppPalette.whiteColor),
        textStyle: WidgetStateProperty.all(TextStyles.rubikMedium3),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyles.rubikSmall400,
      contentPadding: EdgeInsets.all(16),
      enabledBorder: _border(AppPalette.borderColor),
      focusedBorder: _border(AppPalette.blueColor),
    ),
    searchBarTheme: SearchBarThemeData(
      backgroundColor: WidgetStateProperty.all(AppPalette.whiteColor),
      elevation: WidgetStateProperty.all(0),
      padding: WidgetStateProperty.all(
        EdgeInsets.symmetric(vertical: 7, horizontal: 20),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      side: WidgetStateProperty.all(BorderSide(color: AppPalette.borderColor)),
      hintStyle: WidgetStateProperty.all(TextStyles.rubikMedium14),
    ),
    //Chip Theme
    chipTheme: ChipThemeData(
      backgroundColor: AppPalette.blueColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      padding: EdgeInsets.symmetric(horizontal: 11, vertical: 3),
      labelStyle: TextStyle(
        color: AppPalette.whiteColor,
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
      ),
    ),

    //Card Theme
    cardTheme: CardThemeData(
      color: AppPalette.whiteColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: AppPalette.borderColor),
        borderRadius: BorderRadius.circular(20),
      ),
    ),
  );

  static OutlineInputBorder _border(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: color, width: 1),
    );
  }
}
