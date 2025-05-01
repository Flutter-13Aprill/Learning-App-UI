import 'package:flutter/material.dart';
import 'package:learning_app_ui/screens/login_screen.dart';

// Widget for sign-up input fields and button
class SignUpInput extends StatefulWidget {
  const SignUpInput({super.key});

  @override
  State<SignUpInput> createState() => _SignUpInputState();
}

class _SignUpInputState extends State<SignUpInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Form(
        child: Column(
          spacing: 16,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",

                suffixIcon: Icon(Icons.remove_red_eye_outlined),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ),

            // Sign up button - navigates to login screen after 2s delay
            TextButton(
              onPressed: () {},
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Color(0xff78746D),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Future.delayed(Duration(seconds: 2), () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffE3562A),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                height: 56,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
