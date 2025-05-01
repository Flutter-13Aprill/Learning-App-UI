// Import packages & screena
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:learn_app_ui/screens/home_screen.dart';
import 'package:learn_app_ui/screens/signup_screen.dart';

// Main StatefulWidget
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  IconData passwordIcon = CupertinoIcons.eye;
  bool passwordTextStatus = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Login  image
                  Image.asset(
                    'assets/images/login.png',
                    fit: BoxFit.cover,
                  ),
                  
                  // Page title
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    width: double.infinity,
                    child: Text(
                      "Log in",
                      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  // Social login label
                  Text(
                    "Login with social networks",
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(),
                  ),

                  // social media buttons
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Facebook icon
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Image.asset('assets/icons/facebook.jpg'),
                          ),
                        ),
                        const SizedBox(width: 15.0),

                        // Instagram icon
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Image.asset('assets/icons/insta.jpg'),
                          ),
                        ),
                        const SizedBox(width: 15.0),

                        // Google+ icon
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Image.asset('assets/icons/google_plus.jpg'),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Email input field
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(width: 2),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0),

                  // Password input field
                  TextField(
                    obscureText: passwordTextStatus,
                    decoration: InputDecoration(
                      
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            passwordTextStatus = !passwordTextStatus;
                            passwordIcon = passwordTextStatus
                                ? CupertinoIcons.eye
                                : CupertinoIcons.eye_slash;
                          });
                        },
                        child: Icon(passwordIcon, size: 30.0),
                      ),
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(width: 2),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),

                  // Forget password link
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      width: double.infinity,
                      child: Text(
                        "Forget Password?",
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),

                  // Login button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Log in',
                          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                  ),

                  // Signup link
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      width: double.infinity,
                      child: Text(
                        "Sign up",
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
