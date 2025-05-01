import 'package:flutter/material.dart';

class Onboarding2Page extends StatelessWidget {
  const Onboarding2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Image(
          image: AssetImage("assets/images/onBording/Onboarding2.png"),
          width: 375,
          height: 264,
        ),
        SizedBox(height: 8),
        Text(
          "Find a course\nfor you",
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
