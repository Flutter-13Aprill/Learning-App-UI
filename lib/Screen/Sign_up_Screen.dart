import 'package:flutter/material.dart';
import 'package:learning_app_ui/Screen/Login_Screen.dart';

class Sign_up_Screen extends StatefulWidget {
  @override
  _Sign_up_ScreenState createState() => _Sign_up_ScreenState();
}
class _Sign_up_ScreenState extends State<Sign_up_Screen> {
  // Controls whether the password is obscured or visible
  bool obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with white background and black back icon
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: Colors.white,

      // Page content
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Signup illustration image
            Container(
              height: 200,
              width: 400,
              child: Center(child: Image.asset('assets/signup.png')),
            ),

            SizedBox(height: 20),

            // Screen title
            Text(
              'Sign up',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            // Subheading
            Text('Create your account'),

            SizedBox(height: 20),

            // Name input field
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Email input field
            TextField(
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Password input field with visibility toggle
            TextField(
              obscureText: obscurePassword,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: IconButton(
                  icon: Icon(
                    obscurePassword ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    // Toggle password visibility
                    setState(() {
                      obscurePassword = !obscurePassword;
                    });
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.black, width: 2.0),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Sign-up button
            ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[800],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                "Sign up",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),

            SizedBox(height: 20),

            // Navigation to login screen
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => Login_Screen()),
                );
              },
              child: Text('Log in', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
