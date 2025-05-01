import 'package:flutter/material.dart';
import 'package:learning_app_ui/Screen/Learn2_Screen.dart';
class Learn1_Screen extends StatelessWidget {
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Skip button at the top right
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {
                    // TODO: Handle skip action (e.g., go to home or login screen)
                  },
                  child: Text("Skip", style: TextStyle(color: Colors.black)),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Image illustration (takes 3 parts of vertical space)
            Expanded(
              flex: 3,
              child: Center(
                child: Image.asset(
                  'assets/learn1.png',
                  fit: BoxFit.contain,
                  width: 350,
                  height: 600,
                ),
              ),
            ),

            // Title text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Learn anytime\nand anywhere",
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

            SizedBox(height: 40),

            // Dot indicators showing onboarding progress
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Active dot (blue)
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

            // "Next" button to navigate to the next onboarding screen
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
                      MaterialPageRoute(builder: (_) => Learn2_Screen()),
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
