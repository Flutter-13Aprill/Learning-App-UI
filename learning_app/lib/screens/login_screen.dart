import 'package:flutter/material.dart';
import 'package:learning_app/screens/SignUp_Screen.dart';
import 'package:learning_app/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 375,
                    height: 264,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/image_5.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Log In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      'Login with social networks',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Facebook Icon
                      Container(
                        width: 40,
                        height: 40,
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        decoration: BoxDecoration(
                          color: Color(0xFF65AAEA),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/icons/facebook.png',
                            width: 20,
                            height: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      // Instagram

                      Container(
                        width: 40,
                        height: 40,
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        decoration: BoxDecoration(
                          color: Color(0xFF65AAEA),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/icons/instagram-2.png',
                            width: 20,
                            height: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      // Google Icon
                      Container(
                        width: 40,
                        height: 40,
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        decoration: BoxDecoration(
                          color: Color(0xFF65AAEA),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/icons/google-plus.png',
                            width: 20,
                            height: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                    child: SizedBox(
                      width: 311,
                      height: 56,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                        style:
                            const TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                    child: SizedBox(
                      width: 311,
                      height: 56,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          suffixIcon:
                              Icon(Icons.visibility_off, color: Colors.grey),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                        style:
                            const TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 32.0, bottom: 8),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 79, 74, 74),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: SizedBox(
                      width: 311,
                      height: 56,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFE3562A),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const Text(
                          'Log In ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: SizedBox(
                      width: 343,
                      height: 48,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpScreen(),
                            ),
                          );
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.grey[900],
                          textStyle: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        child: const Text('Sign up'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
