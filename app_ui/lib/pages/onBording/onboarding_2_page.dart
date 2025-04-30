import 'package:app_ui/pages/logIn/login_page.dart';
import 'package:app_ui/pages/onBording/onboarding_3_page.dart';
import 'package:app_ui/pages/widgets/circleDot_widget.dart';
import 'package:app_ui/pages/widgets/mainButton.dart';
import 'package:flutter/material.dart';

class Onboarding2Page extends StatelessWidget {
  const Onboarding2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(21),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                     Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Column(
                children: const [
                  Image(
                    image: AssetImage("assets/images/onBording/Onboarding2.png"),
                    width: 375,
                    height: 264,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Find a course\nfor you",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Quarantine is the perfect time to spend your\nday learning something new, from anywhere!",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleDot(),
                  SizedBox(width: 8),
                  CircleDot(isActive: true),
                  SizedBox(width: 8),
                  CircleDot(),
                ],
              ),
               MainButton(nextPage: Onboarding3Page(), text: 'Next')

            ],
          ),
        ),
      ),
    );
  }
}
