import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learning_app_ui/Screens/Intros/intro_first.dart';
import 'package:learning_app_ui/Screens/Intros/intro_second.dart';
import 'package:learning_app_ui/Screens/Intros/intro_third.dart';
import 'package:learning_app_ui/Screens/login_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text("Skip"))
        ],
      ),
      body: Column(children: [
        Container(
            width: MediaQuery.sizeOf(context).width,
            height: 600,
            color: Colors.white,
            child: PageView(
                children: const [IntroFirst(), IntroSecond(), IntroThird()])),
        InkWell(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Container(
              width: 343,
              height: 56,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromARGB(255, 227, 86, 42)),
              child: const Center(
                child: Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ))
      ]),
    );
  }
}
