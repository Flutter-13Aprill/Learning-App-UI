import 'package:app_ui/pages/onBording/controllerOnboarding_page.dart';
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
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ControllerOnboardingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(21),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(width: 375, height: 264, "assets/images/splash/splash_1.png"),
            Text(
              "CodeFactory",
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
