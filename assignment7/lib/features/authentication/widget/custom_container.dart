import 'package:assignment7/core/theme/app_palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 40.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppPalette.blueColor,
      ),

      child: Image.asset(image),
    );
  }
}
