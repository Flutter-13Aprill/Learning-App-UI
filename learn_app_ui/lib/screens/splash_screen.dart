//import packages & screens
import 'package:learn_app_ui/screens/intro_screen.dart';
import 'package:flutter/material.dart';

// Main StatefulWidget 
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  
  @override
  void initState() {
    super.initState();

    // Delay for 6 seconds before navigating to the IntroScreen
    Future.delayed(Duration(seconds: 6), () {
      setState(() {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => IntroScreen()),
        );
      });
    });
  }

  
  @override
  Widget build(BuildContext context) {
    // Get half of the screen height and width
    double halfScreenHeight = (MediaQuery.sizeOf(context).height / 2);
    double halfScreenWidth = (MediaQuery.sizeOf(context).width / 2);

    return MaterialApp(
      home: Scaffold(
        // Main of the splash screen
        body: Column(
          children: [
            Stack(
              children: [
                //  background image
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height,
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/splash.png',
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height,
                    fit: BoxFit.cover,
                  ),
                ),

                //  text logo near the bottom center of the screen
                Positioned(
                  top: (halfScreenHeight + (halfScreenHeight / 2)),
                  left: halfScreenWidth / 2,
                  right: halfScreenWidth / 2,
                  child: Text(
                    'CodeFactory',
                    style: TextStyle(
                      fontSize: (halfScreenWidth * 0.15),
                      fontFamily: 'calibri',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
