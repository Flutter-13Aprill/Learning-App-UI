import 'package:flutter/material.dart';
import 'package:learning_app_ui/Widgets/auth/sign_up_input.dart';
import 'package:learning_app_ui/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Using a container with padding to position the content
      body: Container(
        padding: EdgeInsets.only(top: 96),
        child: Center(
          // ListView allows vertical scrolling
          child: ListView(
            children: [
              // Sign-up image
              Image.asset("images/signup.png", height: 253),

              // Column for the title and subtitle with spacing using SizedBox
              Column(
                spacing: 16,
                children: [
                  Text(
                    "Sign up",
                    style: TextStyle(
                      color: Color(0xff3C3A36),
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "Create your account",
                    style: TextStyle(
                      color: Color(0xff6D6D78),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              // Custom input fields
              SignUpInput(),

              // Navigation to the Login screen
              TextButton(
                onPressed: () {
                  Future.delayed(Duration(seconds: 1), () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  });
                },
                child: Text(
                  "Log in",
                  style: TextStyle(color: Color(0xff78746D), fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
