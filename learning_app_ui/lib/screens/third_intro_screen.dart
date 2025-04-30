import 'package:flutter/material.dart';
import 'package:learning_app_ui/screens/login_screen.dart';

class ThirdIntroScreen extends StatelessWidget {
  const ThirdIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap:
                            () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            ),
                        child: Text(
                          "Skip",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    "assets/images/Intro3Image.png",
                    height: 280,
                    width: 250,
                  ),
                  SizedBox(height: 46),
                  Text(
                    "Improve your skills",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),

                  Text(
                    "Quarantine is the perfect time to spend your day learning something new, from anywhere!",
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 7,
                        width: 8,
                        decoration: BoxDecoration(
                          color: Color(0xffD5D4D4),
                          // borderRadius: BorderRadius.circular(20),
                          shape: BoxShape.circle,
                        ),
                      ),

                      SizedBox(width: 8),
                      Container(
                        height: 7,
                        width: 8,
                        decoration: BoxDecoration(
                          color: Color(0xffD5D4D4),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        height: 7,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Color(0xff65AAEA),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 100),
                  InkWell(
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        ),
                    child: Container(
                      height: 60,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Color(0xffE3562A),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Let's start",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
