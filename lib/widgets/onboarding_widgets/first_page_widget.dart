import 'package:flutter/widgets.dart';

/// [FirstPageWidget] represents the first screen in the onboarding flow.
class FirstPageWidget extends StatelessWidget {
  const FirstPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/onboarding_images/illustration (1).png'),

        SizedBox(height: 16),

        Text(
          'Learn anytime\nand anywhere',
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
