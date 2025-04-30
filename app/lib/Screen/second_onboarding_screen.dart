import 'package:app/Screen/third_onboarding_screen.dart';
import 'package:flutter/material.dart';

class SecondOnboardingScreen extends StatefulWidget {
  const SecondOnboardingScreen({super.key});

  @override
  State<SecondOnboardingScreen> createState() => _SecondOnboardingScreen();
}

class _SecondOnboardingScreen extends State<SecondOnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Set app bar background color
        actions: [
          Padding(
            // Right padding for the skip button
            padding: const EdgeInsets.only(right: 26),
            child: Text(
              "skip",
              style: TextStyle(fontSize: 16),
            ), // Skip button text
          ),
        ],
      ),
      backgroundColor: Colors.white, // Set background color of the screen
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Center column vertically
          crossAxisAlignment:
              CrossAxisAlignment.center, // Center column horizontally
          children: [
            Container(
              alignment: Alignment(0, 0), // Center the image
              margin: EdgeInsets.all(24), // Add margin around the container
              width: 300, // Set width of the image container
              height: 300, // Set height of the image container
              child: Image.asset(
                "assest/images/3.png",
                fit: BoxFit.fill,
              ), // Load the image
            ),
            Text(
              // Main message text
              "Find a course\n \t\t\tfor you",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 10), // Add space between texts
            Text(
              // Description text
              "Quarantine is the perfect time to spend your day learning something new, from anywherel ",
              style: TextStyle(color: Color.fromARGB(255, 141, 136, 136)),
              textAlign: TextAlign.center, // Center the description text
            ),
            // SizedBox(height: 70),
            Row(
              // Progress indicator dots
              children: [
                Container(
                  // Margin for positioning
                  margin: EdgeInsets.only(left: 180, right: 8, top: 19),
                  width: 8,
                  height: 10,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                      255,
                      147,
                      168,
                      185,
                    ), // Inactive dot color
                    borderRadius: BorderRadius.circular(24), // Rounded corners
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 19), // Margin for the active dot
                  width: 18,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.blue, // Active dot color
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 8,
                    right: 8,
                    top: 19,
                  ), // Margin for the active dot
                  width: 8,
                  height: 10,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                      255,
                      147,
                      168,
                      185,
                    ), // Inactive dot
                    borderRadius: BorderRadius.circular(24), // Rounded corners
                  ),
                ),
              ],
            ),

            SizedBox(height: 70), // Space before the button
            MaterialButton(
              onPressed: () {
                // Navigate to the third onboarding screen when button is pressed
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (Context) {
                      return ThirdOnboardingScreen();
                    },
                  ),
                );
              },
              child: Container(
                width: 500,// Set button width
                height: 70,// Set button height
                padding: EdgeInsets.all(16), // Padding inside the button
                decoration: BoxDecoration(
                  color: Color(0xFFE3562A), // Button background color
                  borderRadius: BorderRadius.circular(18),// Rounded corners for the button
                ),
                child: Text( // Button text
                  "Next",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center,// Center the button text

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
