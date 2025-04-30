import 'package:app/Screen/second_onboarding_screen.dart';
import 'package:flutter/material.dart';

class FirstOnboardingScreen extends StatefulWidget {
  const FirstOnboardingScreen({super.key});

  @override
  State<FirstOnboardingScreen> createState() => _FirstOnboardingScreen();
}

class _FirstOnboardingScreen extends State<FirstOnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Set app bar background color
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 26,
            ), // Add right padding to skip button
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
                "assest/images/2.png",
                fit: BoxFit.fill,
              ), // Load the image
            ),
            Text(
              "Learn anytime\n and anywhere ", // Main message text
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 10), // Add space between texts
            Text(
              // Description text
              "Quarantine is the perfect time to spend your day learning something new, from anywherel ",
              style: TextStyle(color: Color.fromARGB(255, 141, 136, 136)),
              textAlign: TextAlign.center, // Center the description text
            ),
            Row(
              children: [
                // Button container with an arrow icon
                Container(
                  width: 65,
                  height: 46,
                  margin: EdgeInsets.only(right: 40), // Right margin
                  padding: EdgeInsets.all(8), // Padding inside the container
                  decoration: BoxDecoration(
                    color: Colors.blue, // Background color of the button
                    borderRadius: BorderRadius.circular(42), // Rounded corners
                  ), // Arrow icon
                  child: Icon(
                    Icons.arrow_circle_up_rounded,
                    color: Colors.white,
                    size: 35,
                  ),
                ),

                SizedBox(width: 30), // Space between elements in the row
                // Progress indicator dots
                Container(
                  width: 18,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.blue,// Active dot color
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16), // Left margin for the next dot
                  width: 8,
                  height: 10,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 147, 168, 185),
                    borderRadius: BorderRadius.circular(24), // Rounded corners
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16),// Left margin for the next dot
                  width: 8,
                  height: 10,
                  decoration: BoxDecoration( // Inactive dot color
                    color: const Color.fromARGB(255, 147, 168, 185),
                    borderRadius: BorderRadius.circular(24),// Rounded corners color
                  ),
                ),
              ],
            ),

            SizedBox(height: 70),// Space before the button
            MaterialButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SecondOnboardingScreen(); // Navigate to the second onboarding 
                    },
                  ),
                );
              },
              child: Container(
                width: 500, // Set button width
                height: 70,// Set button height
                padding: EdgeInsets.all(16), // Padding inside the button
                decoration: BoxDecoration(
                  color: Color(0xFFE3562A),// Button background color
                  borderRadius: BorderRadius.circular(18),// Rounded corners for the button
                ),
                child: Text(
                  "Next",// Button text
                  style: TextStyle(color: Colors.white, fontSize: 20), // Style the button text
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
