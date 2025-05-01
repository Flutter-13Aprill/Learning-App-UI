import 'package:flutter/material.dart';
import 'package:learning_app/screens/home_screen.dart';
import 'package:learning_app/screens/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameField = TextEditingController();
  final emailField = TextEditingController();
  final passwordField = TextEditingController();
  bool isObscureText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            spacing: 8,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/signup.png",
                width: MediaQuery.sizeOf(context).width,
                height: (MediaQuery.sizeOf(context).width) / 1.5,
              ),

              Text(
                'Sign up',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              Text(
                'Create your account',
                style: TextStyle(fontSize: 14, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              // TextField for name
              TextField(
                controller: nameField,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.badge_outlined),
                  hintText: "Enter your name",
                  labelText: "Name",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.deepOrange),
                  ),
                ),
              ),
              // TextField for email
              TextField(
                controller: emailField,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: "Enter your email",
                  labelText: "Email",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.deepOrange),
                  ),
                ),
              ),
              // TextField for password with obscureText option and icon button
              TextField(
                obscureText: isObscureText,
                controller: passwordField,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password_rounded),
                  hintText: "Enter your password",
                  labelText: "Password",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.deepOrange),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      isObscureText = !isObscureText;
                      setState(() {});
                    },
                    icon:
                        isObscureText
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                    MediaQuery.sizeOf(context).width,
                    (MediaQuery.sizeOf(context).width) / 7,
                  ),
                  backgroundColor: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) =>
                              HomeScreen(nameFieldText: nameField.text),
                    ),
                  );
                },
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              // TextButton for Log In page
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LogInScreen()),
                  );
                },
                child: Text(
                  "Log in?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
