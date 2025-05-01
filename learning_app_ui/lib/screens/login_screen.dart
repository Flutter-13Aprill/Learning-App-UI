import 'package:flutter/material.dart';
import 'package:learning_app_ui/Widgets/auth/login_button.dart';
import 'package:learning_app_ui/Widgets/auth/login_input.dart';
import 'package:learning_app_ui/screens/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Main container with padding from the top
      body: Container(
        padding: EdgeInsets.only(top: 96),
        child: Center(
          // ListView allows vertical scrolling of the content
          child: ListView(
            children: [
              // Login  image
              Image.asset("images/login.png", height: 253),

              // Login title and social login section
              Column(
                spacing: 16,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Color(0xff3C3A36),
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "Login with social networks",
                    style: TextStyle(
                      color: Color(0xff6D6D78),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),

                  // Row of social media login buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LoginButton(iconName: "images/facebook.png"),
                      LoginButton(iconName: "images/instagrsm.png"),
                      LoginButton(iconName: "images/google.png"),
                    ],
                  ),
                ],
              ),

              // Custom login input fields
              LoginInput(),

              // TextButton for navigation to the sign-up screen
              TextButton(
                onPressed: () {
                  Future.delayed(Duration(seconds: 1), () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  });
                },
                child: Text(
                  "Sign up",
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
