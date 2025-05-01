import 'dart:async';

import 'package:assignment7/core/text/app_text.dart';
import 'package:assignment7/features/Onboarding/Presentation/page/onboarding_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (time) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("asset/image/splash.png"),
            SizedBox(height: 8),
            Text(AppText.splash, style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
      ),
    );
  }
}
