import 'package:assignment7/screens/courses_screen.dart';
import 'package:assignment7/screens/signup_screen.dart';
import 'package:flutter/material.dart';

// the login page where the user can login UI ONLY

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // a container to hold the image for the login screen
                Container(
                  width: 300,
                  height: 300,
                  child: Image.asset('assets/images/logInScreen.png'),
                ),

                Container(
                  child: Text('Log in', style: TextStyle(fontSize: 35)),
                ),
                Container(
                  child: Text(
                    'Login with social networks',
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 82, 80, 80),
                    ),
                  ),
                ),
                Row( //row for social media icons
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 16,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: Image.asset('assets/icons/instagram.png'),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      child: Image.asset('assets/icons/facbook.png'),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      child: Image.asset('assets/icons/google.png'),
                    ),
                  ],
                ),
                //text fields 
                Container(
                  width: 400,
                  height: 60,
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 400,
                  height: 60,
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Text('Forgot Passowrd?'),

                //for the course page navigator
                Container(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => CoursesScreen()),
                      );
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                //navigator to the signup
                Container(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },

                    style: ElevatedButton.styleFrom(
                      
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(
                      'Signup',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 73, 71, 71),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
