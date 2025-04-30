
import 'package:app_ui/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
    
//     return const MaterialApp(
//       home: HomePage()
//     );
//   }
// }

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainappState();
}

class _MainappState extends State<MainApp> {
  
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage()
    );
  }
}
