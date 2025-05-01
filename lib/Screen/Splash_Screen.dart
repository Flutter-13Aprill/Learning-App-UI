import 'dart:async'; // Needed for Timer
import 'package:flutter/material.dart';
import 'package:learning_app_ui/Screen/Learn1_Screen.dart';
class Splash_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Start a timer that navigates to Learn1_Screen after 3 seconds
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Learn1_Screen()),
      );
    });

    return Scaffold(
      // App bar with white background and black icons
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),

      // Set the background color of the screen to white
      backgroundColor: Colors.white,

      // Centered body content
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Splash image container
            SizedBox(
              width: 250, // Set image width
              height: 300, // Set image height
              child: Image(
                image: AssetImage('assets/Splash.png'), // Load image asset
                fit: BoxFit.cover, // Scale image to fill container
              ),
            ),
          ],
        ),
      ),
    );
  }
}
