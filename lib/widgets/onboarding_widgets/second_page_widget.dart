import 'package:flutter/material.dart';

/// [SecondPageWidget] represents the second screen in the onboarding flow.
class SecondPageWidget extends StatelessWidget {
  const SecondPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/onboarding_images/Cool Kids Staying Home.png',
        ),

        SizedBox(height: 16),

        Text(
          'Find a course\nfor you',
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
