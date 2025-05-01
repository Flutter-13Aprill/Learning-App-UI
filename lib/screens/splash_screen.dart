import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// --- Screens
import 'package:learning_app_ui/screens/onboarding_screen.dart';

/// [SplashScreen] displays the app logo when the app is first launched.
class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    // To hide the status bar and the indictor
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    // To simulates as native splash screen
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnboardingScreen()));
    });

  }

  @override
  void dispose() {
    super.dispose();

    // Make sure to return the status bar and indictor after leaving the splash screen
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 16,
          children: [
            Image.asset('assets/images/splash_images/illustration.png'),
            Text(
              'CodeFactory',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                letterSpacing: -1,
                fontFamily: 'Rubik'
              ),
              )
          ],
        ),
      ),
    );
  }
}