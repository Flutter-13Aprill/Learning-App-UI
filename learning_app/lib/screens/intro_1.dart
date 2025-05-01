import 'package:flutter/material.dart';
import 'package:learning_app/screens/intro_2.dart';
import 'package:learning_app/screens/login_screen.dart';

class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 16,
              right: 16,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 24),
                  Image.asset(
                    'assets/images/image_1.png',
                    width: 343,
                    height: 250,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Learn anytime\nand anywhere',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      'Quarantine is the perfect time to spend your\nday learning something new, from anywhere!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.circle, size: 12, color: Color(0xFFE3562A)),
                      SizedBox(width: 4),
                      Icon(Icons.circle, size: 8, color: Colors.grey),
                      SizedBox(width: 4),
                      Icon(Icons.circle, size: 8, color: Colors.grey),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 32,
              left: 32,
              right: 32,
              child: SizedBox(
                width: 311,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Intro2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE3562A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
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
