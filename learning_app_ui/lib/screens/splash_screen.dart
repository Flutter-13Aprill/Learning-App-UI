import 'package:flutter/material.dart';
import 'package:learning_app_ui/screens/intro_screen.dart';

// Splash screen widget shown at app launch
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Wait for 5 seconds, then navigate to IntrosScreen
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => IntroScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        // Display the splash image centered on the screen
        child: Image.asset("images/Content.png", height: 326, width: 375),
      ),
    );
  }
}
