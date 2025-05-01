import 'package:flutter/material.dart';
import 'package:learning_app_ui/Widgets/circle_dots.dart';
import 'package:learning_app_ui/Widgets/intros.dart';
import 'package:learning_app_ui/screens/login_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  // Controller for PageView to handle page swipes
  PageController moveTo = PageController();

  // Tracks the current page index
  int imgValue = 0;

  // control which dot is active (for CircleDots widget)
  bool oneValue = true;
  bool twoValue = false;
  bool threeValue = false;

  // Button text updates from "Next" to "Let's Start"
  String buttonText = "Next";

  @override
  void initState() {
    // Initialize PageController
    moveTo = PageController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with a "Skip" button that navigates to LoginScreen
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Future.delayed(Duration(seconds: 1), () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 16),
              child: Text(
                "Skip",
                style: TextStyle(
                  color: Color(0xff78746D),
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 150),
        child: ListView(
          children: [
            // Swipable pages
            SizedBox(
              height: 446,
              child: PageView(
                controller: moveTo,
                onPageChanged: (value) {
                  imgValue = imgValue + 1;

                  if (buttonText == "Let’s Start") {
                    Future.delayed(Duration(seconds: 1), () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    });
                  }
                  // Update the dot indicators and button text based on the page
                  if (imgValue == 1) {
                    oneValue = false;
                    twoValue = true;
                  } else if (imgValue == 2) {
                    oneValue = false;
                    twoValue = false;
                    threeValue = true;
                    buttonText = "Let’s Start";
                  }
                  setState(() {});
                },

                children: [
                  Intros(
                    img: "images/intro1.png",
                    title: "Learn anytime \n and anywhere",
                    description:
                        "Quarantine is the perfect time to spend your \n day learning something new, from anywhere!",
                  ),
                  Intros(
                    img: "images/intro2.png",
                    title: "Find a course \nfor you",
                    description:
                        "Quarantine is the perfect time to spend your \n day learning something new, from anywhere!",
                  ),
                  Intros(
                    img: "images/intro3.png",
                    title: "Improve your skills",
                    description:
                        "Quarantine is the perfect time to spend your \nday learning something new, from anywhere!",
                  ),
                ],
              ),
            ),
            // Dot indicators representing current page
            CircleDots(
              oneActive: oneValue,
              twoActive: twoValue,
              threeActive: threeValue,
            ),
            // Navigation button
            Container(
              margin: EdgeInsets.only(top: 72, left: 32, right: 32, bottom: 50),
              child: ElevatedButton(
                onPressed: () {
                  // Animate to next page
                  moveTo.animateToPage(
                    imgValue = imgValue + 1,
                    duration: Duration(seconds: 1),
                    curve: Curves.easeIn,
                  );
                  // If it's the last page, navigate to login after a short delay
                  if (buttonText == "Let’s Start") {
                    Future.delayed(Duration(seconds: 1), () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    });
                  }
                  // Update the dot indicators and button text based on the page
                  if (imgValue == 1) {
                    oneValue = false;
                    twoValue = true;
                  } else if (imgValue == 2) {
                    oneValue = false;
                    twoValue = false;
                    threeValue = true;
                    buttonText = "Let’s Start";
                  }
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0xffE3562A),
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
                child: Text(buttonText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
