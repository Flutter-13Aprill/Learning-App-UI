import 'package:assignment7/core/theme/app_palette.dart';
import 'package:assignment7/features/Onboarding/data/onboarding_data.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothIndicator extends StatelessWidget {
  const CustomSmoothIndicator({super.key, required this.controller});

  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: onboardingData.length,
      effect: ExpandingDotsEffect(
        activeDotColor: AppPalette.blueColor,
        dotColor: AppPalette.dotColor,
        dotWidth: 6,
        dotHeight: 6,
        radius: 4,
        spacing: 10,
      ),
    );
  }
}
