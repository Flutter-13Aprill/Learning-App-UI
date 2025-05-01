import 'package:flutter/material.dart';
import 'package:learning_app_ui/Screen/Home_Screen.dart';
import 'package:learning_app_ui/Screen/Sign_up_Screen.dart';

class Login_Screen extends StatefulWidget {
  @override
  _Login_ScreenState createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  // Controls password visibility
  bool obscurePassword = false;
  @override
  Widget build(BuildContext context) {
    // Helper widget to create social login buttons
    Widget socialButton(IconData icon, Color color) {
      return Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(8),
            bottom: Radius.circular(8),
          ),
        ),
        child: Icon(icon, color: Colors.white),
      );
    }

    return Scaffold(
      // App bar with white background and black icon
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: Colors.white,

      // Body content
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Top illustration image
            Container(
              height: 200,
              child: Center(child: Image.asset('assets/login.png')),
            ),

            SizedBox(height: 20),

            // Title text
            Text(
              'Log in',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            // Subheading
            Text('Login with social networks'),

            SizedBox(height: 20),

            // Social login buttons row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                socialButton(Icons.facebook_rounded, Colors.blue),
                SizedBox(width: 10),
                socialButton(Icons.photo_camera_rounded, Colors.blue),
                SizedBox(width: 10),
                socialButton(Icons.g_mobiledata_outlined, Colors.blue),
              ],
            ),

            SizedBox(height: 20),

            // Email input field
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
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

            // Password input field with toggle visibility icon
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

            SizedBox(height: 10),

            // Forgot password button (no functionality yet)
            TextButton(
              onPressed: () {
               
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.black),
              ),
            ),

            SizedBox(height: 10),

            // Login button to Home_screen
            ElevatedButton(
              onPressed: () {
                 Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => Home_Screen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[800],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text(
                "Log in",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),

            SizedBox(height: 20),

            // Sign-up navigation
            TextButton(
              onPressed: () {
                // Navigate to sign-up screen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => Sign_up_Screen()),
                );
              },
              child: Text('Sign up', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
