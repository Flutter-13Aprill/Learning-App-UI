import 'package:app/Screen/login_screen.dart';
import 'package:flutter/material.dart';

class ThirdOnboardingScreen extends StatefulWidget {
  const ThirdOnboardingScreen({super.key});

  @override
  State<ThirdOnboardingScreen> createState() => _ThirdOnboardingScreen();
}

class _ThirdOnboardingScreen extends State<ThirdOnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Set app bar background color
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 26,
            ), // Right padding for the skip button
            child: Text("skip", style: TextStyle(fontSize: 16)), // Skip
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
                "assest/images/4.png",
                fit: BoxFit.fill,
              ), // Load the image
            ),
            Text(
              // Style the text
              "Improve your skills", // Main message text
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 10),
            Text(
              // Description text
              "Quarantine is the perfect time to spend your day learning something new, from anywherel ",
              style: TextStyle(color: Color.fromARGB(255, 141, 136, 136)),
              textAlign: TextAlign.center,
            ),
            Row(
              children: [
                // Progress indicator dots
                Container(
                  margin: EdgeInsets.only(
                    left: 180,
                    right: 8,
                    top: 19,
                  ), // Margin for positioning
                  width: 8, //width indicator
                  height: 10, //height indicator
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
                  ), // Margin for positioning
                  width: 8,
                  height: 10,
                  decoration: BoxDecoration(
                    // Inactive dot
                    color: const Color.fromARGB(255, 147, 168, 185),
                    borderRadius: BorderRadius.circular(24), // Rounded corners
                  ),
                ),
              ],
            ),

            SizedBox(height: 70), // Space before the button
            MaterialButton(
              onPressed: () {
                // Navigate to the home screen when button is pressed
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              child: Container(
                width: 500, // Set button width
                height: 70,// Set button height
                padding: EdgeInsets.all(16), // Padding inside the button
                decoration: BoxDecoration(
                  color: Color(0xFFE3562A), // Button background color
                  borderRadius: BorderRadius.circular(18),// Rounded corners for the button

                ),
                child: Text(
                  "let’s Starte", // Button text
                  style: TextStyle(color: Colors.white, fontSize: 20),// Style the button text
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
