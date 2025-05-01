import 'package:flutter/material.dart';
import 'package:learning_app_ui/Screen/Learn3_Screen.dart';

class Learn2_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with white background and black icon color
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Skip button aligned to top right
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    // TODO: Add skip functionality if needed
                  },
                  child: Text("Skip", style: TextStyle(color: Colors.black)),
                ),
              ),
            ),

            SizedBox(height: 30),

            // Illustration image in the center
            Expanded(
              flex: 3,
              child: Center(
                child: Image.asset(
                  'assets/learn2.png',
                  fit: BoxFit.contain,
                  height: 600,
                  width: 350,
                ),
              ),
            ),

            // Title text
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "Find a course\nfor you",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 10),

            // Description text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Quarantine is the perfect time to spend your\n"
                "day learning something new, from anywhere!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
            ),

            SizedBox(height: 50),

            // Dot indicators to show progress (second dot is active)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Inactive dot
                Container(
                  width: 3,
                  height: 3,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.rectangle,
                  ),
                ),
                // Active dot
                Container(
                  width: 13,
                  height: 4,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.rectangle,
                  ),
                ),
                // Inactive dot
                Container(
                  width: 3,
                  height: 3,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.rectangle,
                  ),
                ),
              ],
            ),

            SizedBox(height: 80),

            // "Next" button to go to Learn3_Screen
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    // Navigate to the next onboarding screen
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => Learn3_Screen()),
                    );
                  },
                  child: Text(
                    "Next",
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
