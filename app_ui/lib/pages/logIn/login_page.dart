import 'package:app_ui/pages/homePage/home_page.dart';
import 'package:app_ui/pages/signUp/signup_page.dart';
import 'package:app_ui/pages/widgets/iconContainer_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              Column(
                children: const [
                  Image(
                    image: AssetImage("assets/images/logIn/login.png"),
                    width: 375,
                    height: 264,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Log in",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Login with social networks",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconContainer(iconPath: "assets/images/logIn/icons/facbook.png"),
                  SizedBox(width: 8),
                  IconContainer(iconPath: "assets/images/logIn/icons/instgram.png"),
                  SizedBox(width: 8),
                  IconContainer(iconPath: "assets/images/logIn/icons/google.png"),
                ],
              ),
              TextFormField(
                initialValue: 'Email',
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              TextFormField(
                initialValue: 'password',
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                ),
              ),

              TextButton(
                onPressed: () {},
                child: const Text(
                  "Forget Password?",
                  style: TextStyle(color: Colors.black38),
                ),
              ),
              SizedBox(
                width: 311,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text(
                    "Log in",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupPage(),
                      ),
                    );
                },
                child: const Text(
                  "sign up",
                  style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
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
