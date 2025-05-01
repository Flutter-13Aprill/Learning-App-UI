import 'package:app_ui/pages/logIn/login_page.dart';
import 'package:app_ui/pages/onBording/onboarding_1_page.dart';
import 'package:app_ui/pages/onBording/onboarding_2_page.dart';
import 'package:app_ui/pages/onBording/onboarding_3_page.dart';
import 'package:app_ui/pages/widgets/circleDot_widget.dart';
import 'package:app_ui/pages/widgets/mainButton.dart';
import 'package:flutter/material.dart';

class ControllerOnboardingPage extends StatefulWidget {
  const ControllerOnboardingPage({super.key});

  @override
  State<ControllerOnboardingPage> createState() =>
      _ControllerOnboardingPageState();
}

class _ControllerOnboardingPageState extends State<ControllerOnboardingPage> {
  PageController moveTo = PageController();
  int currentPage = 0;
  String titleButton = "Next";
  @override
  void initState() {
    moveTo = PageController(initialPage: 0, viewportFraction: 1);
    super.initState();
  }

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
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                width: 400,
                height: 600,
                child: PageView(
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                      print("$currentPage current page");
                      if (index == 2)
                        titleButton = "Let’s Start";
                      else
                        titleButton = "next";
                    });
                  },
                  controller: moveTo,
                  children: [
                    Onboarding1Page(),
                    Onboarding2Page(),
                    Onboarding3Page(),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleDot(isActive: true),
                  SizedBox(width: 8),
                  CircleDot(),
                  SizedBox(width: 8),
                  CircleDot(),
                ],
              ),
              MainButton(
                yourLogic: () {
                  if (currentPage != 2) {
                    currentPage++;
                    moveTo.animateToPage(
                      currentPage,
                      duration: Duration(seconds: 1),
                      curve: Curves.easeIn,
                    );
                  } else {
                    setState(() {
                      titleButton = "Let’s Start";
                    });
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  }
                },
                text: titleButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
