import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:learning_app/screens/home_screen.dart';
import 'package:learning_app/screens/signup_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
                "assets/images/login.png",
                width: MediaQuery.sizeOf(context).width,
                height: (MediaQuery.sizeOf(context).width) / 1.5,
              ),

              Text(
                'Log in',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              Text(
                'Login with social networks',
                style: TextStyle(fontSize: 14, color: Colors.grey),
                textAlign: TextAlign.center,
              ),

              Row(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      'assets/svg/facebook.svg',
                      width: MediaQuery.sizeOf(context).width / 5,
                      height: (MediaQuery.sizeOf(context).width / 5) / 2,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      'assets/svg/instagram.svg',
                      width: MediaQuery.sizeOf(context).width / 5,
                      height: (MediaQuery.sizeOf(context).width / 5) / 2,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      'assets/svg/gmail.svg',
                      width: MediaQuery.sizeOf(context).width / 5,
                      height: (MediaQuery.sizeOf(context).width / 5) / 2,
                    ),
                  ),
                ],
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
                      builder: (context) => HomeScreen(nameFieldText: ""),
                    ),
                  );
                },
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              // TextButton for Sign Up page
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
                child: Text(
                  "Sign up?",
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
