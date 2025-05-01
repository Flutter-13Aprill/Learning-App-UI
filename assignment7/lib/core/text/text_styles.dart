import 'package:assignment7/core/theme/app_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static const rubikBoold = TextStyle(
    fontFamily: 'Rubik',
    fontSize: 40,
    fontWeight: FontWeight.w700,
    color: AppPalette.textColor1,
    height: 1.15,
    letterSpacing: -1,
  );

  static final rubikMedium1 = TextStyle(
    fontFamily: 'Rubik',
    fontSize: 24.sp,
    letterSpacing: -0.5,
    height: 32 / 24,
    fontWeight: FontWeight.w500,
    color: Color(0xFF3C3A36),
  );
  static final rubikSmall400 = TextStyle(
    fontFamily: 'Rubik',
    fontSize: 14.sp,
    height: 1.5,
    fontWeight: FontWeight.w400,
    color: Color(0xFF78746D),
  );
  static const rubikMedium3 = TextStyle(
    fontFamily: 'Rubik',
    fontSize: 16,
    height: 1.125,
    fontWeight: FontWeight.w500,
    color: AppPalette.whiteColor,
  );
  static const rubikMedium14 = TextStyle(
    fontFamily: 'Rubik',
    fontSize: 14,
    height: 1.125,
    fontWeight: FontWeight.w500,
    color: AppPalette.textColor2,
  );
  static const rubikSmall16 = TextStyle(
    fontFamily: 'Rubik',
    fontSize: 16,

    fontWeight: FontWeight.w400,
    color: AppPalette.textColor1,
  );
}
