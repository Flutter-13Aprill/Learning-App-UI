import 'package:flutter/material.dart';

class Onboarding3Page extends StatelessWidget {
  const Onboarding3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Image(
          image: AssetImage("assets/images/onBording/Onboarding3.png"),
          width: 375,
          height: 264,
        ),
        SizedBox(height: 8),
        Text(
          "Improve your skills",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          "Quarantine is the perfect time to spend your\nday learning something new, from anywhere!",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
