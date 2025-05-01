import 'package:flutter/material.dart';
import 'package:learning_app_ui/screens/home_screen.dart';

// LoginInput widget: includes email & password fields, and login button
class LoginInput extends StatefulWidget {
  const LoginInput({super.key});

  @override
  State<LoginInput> createState() => _LoginInputState();
}

class _LoginInputState extends State<LoginInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16),
      child: Form(
        child: Column(
          spacing: 16,
          children: [
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

            // Login button that navigates to HomeScreen after delay
            TextButton(
              onPressed: () {
                Future.delayed(Duration(seconds: 2), () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
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
                    "Log in",
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
