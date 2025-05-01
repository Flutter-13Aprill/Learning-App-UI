import 'package:flutter/material.dart';

/// [ThirdPageWidget] represents the third screen in the onboarding flow.
class ThirdPageWidget extends StatelessWidget {
  const ThirdPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/onboarding_images/Cool Kids High Tech.png'),

        SizedBox(height: 16),

        Text(
          'Improve your skills',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.5,
            fontFamily: 'Rubik',
          ),
        ),

        SizedBox(height: 8),

        Text(
          'Quarantine is the perfect time to spend your\nday learning something new, from anywhere!',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'Rubik',
          ),
        ),
      ],
    );
  }
}
