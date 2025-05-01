import 'package:flutter/material.dart'; // Flutter material design package
import 'package:learning_app_ui/Screen/Splash_Screen.dart'; // Import the Splash Screen
// Entry point of the application
void main() {
  runApp(MyApp()); // Launch the app using MyApp widget
}
// Main application widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp is the root of the widget tree
    return MaterialApp(
      home: Splash_Screen(), // Set the initial screen to Splash_Screen
      debugShowCheckedModeBanner: false, // Hides the debug banner
    );
  }
}
