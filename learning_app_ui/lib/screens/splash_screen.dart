import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning_app_ui/screens/first_intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 10), () {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (_) => FirstIntroScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/SplashImage.png",
                height: 280,
                width: 250,
              ),
              SizedBox(height: 10),
              Text(
                "CodeFctory",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
