import 'package:flutter/material.dart';
import 'package:learning_app_ui/Screen/Login_Screen.dart';

class Learn3_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with white background and black icons
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [
            // Skip button at the top right
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  // TODO: Add skip functionality if desired
                },
                child: Text("Skip", style: TextStyle(color: Colors.black)),
              ),
            ),

            SizedBox(height: 30),

            // Onboarding illustration image
            Expanded(
              flex: 2,
              child: Image.asset(
                'assets/learn3.png',
                fit: BoxFit.contain,
                width: 350,
                height: 600,
              ),
            ),

            SizedBox(height: 10),

            // Title text
            Text(
              "Improve your skills",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            // Description text
            Text(
              "Quarantine is the perfect time to spend your\n"
              "day learning something new, from anywhere!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),

            SizedBox(height: 40),

            // Dot indicators (3rd one is active)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Inactive dot
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: 4,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                // Inactive dot
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: 4,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                // Active dot
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: 12,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ],
            ),

            SizedBox(height: 80),

            // "Let's Start" button to navigate to the login screen
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the login screen
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => Login_Screen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    "Let's Start",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
