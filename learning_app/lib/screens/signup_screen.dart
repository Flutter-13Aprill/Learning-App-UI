import 'package:flutter/material.dart';
import 'package:learning_app/screens/home_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/image_6.png',
                  width: 375,
                  height: 264,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Sign up',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
                const SizedBox(height: 8),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    'Create your account',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14.0, color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 24),
                buildInputField(hint: 'Name'),
                buildInputField(hint: 'E-mail'),
                buildInputField(hint: 'Password', isPassword: true),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: SizedBox(
                    width: 311,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFE3562A),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: const Text(
                        'Sign up',
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
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Log in',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInputField({required String hint, bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: SizedBox(
        width: 311,
        height: 56,
        child: TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hint,
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.grey),
            ),
          ),
          style: const TextStyle(fontSize: 14, color: Colors.black),
        ),
      ),
    );
  }
}
