import 'package:flutter/material.dart';
import 'intro.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  //"initState() is executed automatically when the screen is created for the first time.
  void initState() {
    super.initState();

/*Future.delayed:delays the execution of the code inside it for 2 seconds.
   and mounted: Checks if the screen is still present (to avoid errors)*/
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => IntroPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/pic3/splashScreen.png',
              width: 300,
              height: 300,
            ),
            const SizedBox(height: 20),
            const Text(
              'CodeFactory',
              style: TextStyle(
                fontSize: 28, 
                fontWeight: FontWeight.bold, 
                color: Colors.black, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
