// ignore_for_file: use_build_context_synchronously

import 'package:apr30/Screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  initState() {
    super.initState();
    // Navigate to the OnboardingScreen after a delay of 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Build the splash screen with a centered image
    return Scaffold(
      body: Center(child: Image.asset("Assets/Images/splash.png")),
    );
  }
}
