import 'package:app_ui/pages/homePage/home_page.dart';
import 'package:app_ui/pages/logIn/login_page.dart';
import 'package:app_ui/pages/widgets/mainButton.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});
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
                    image: AssetImage("assets/images/signUp/signup.png"),
                    width: 375,
                    height: 264,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Sign up",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Create your account",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              TextFormField(
                initialValue: 'Name',
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              TextFormField(
                initialValue: 'E-mail',
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
              MainButton(nextPage: HomePage(), text: "Sign up"),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Log in",
                    style: TextStyle(color: Colors.black38,fontWeight: FontWeight.bold,fontSize: 16),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
