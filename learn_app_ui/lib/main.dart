// import material and home_screen page
import 'package:flutter/material.dart';
import 'package:learn_app_ui/screens/splash_screen.dart';

//main function
void main() {
  runApp(const MainApp());
}

//main class thats call homescreen()
class MainApp extends StatelessWidget {
  const MainApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home:SplashScreen());
  }
}
