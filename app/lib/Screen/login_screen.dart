import 'package:app/Screen/home_screen.dart';
import 'package:app/Screen/sing_up.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Controllers for text fields
  final _textEditingController1 = TextEditingController();
  final _textEditingController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color of the screen
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Center the column vertically
        children: [
          Center(
            child: Container(
              width: 280, // Set width of the image container
              height: 280, // Set height of the image container
              alignment: Alignment(1, .5), // Align image within the container
              child: Image.asset(
                "assest/images/5.png",
                fit: BoxFit.fill,
              ), // Load the image
            ),
          ),
          Text(
            // Title of the screen
            "Log in",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ), // Style for the title
          ),
          Text(
            // Subtitle for social login
            "Login with social networks ",
            style: TextStyle(
              fontSize: 14, // Subtitle size & color
              color: const Color.fromARGB(255, 63, 63, 63),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center the row items
            children: [
              // facebook Button
              const SizedBox(height: 2),
              Container(
                margin: EdgeInsets.only(top: 13, bottom: 15),
                width: 50, // Margin for positioning
                height: 50, // Button width and height
                decoration: BoxDecoration(
                  color: Color(0XFFE65AAEA), // Button background color
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(
                  FontAwesomeIcons.facebook, // Facebook icon
                  color: Colors.white, // Icon color
                  size: 30,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 13,
                  left: 15,
                  bottom: 15,
                ), // Margin for positioning
                width: 50, // Button width and height
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0XFFE65AAEA),
                  borderRadius: BorderRadius.circular(14), // Rounded corners
                ),
                child: Icon(
                  //icon
                  FontAwesomeIcons.instagram, // Instagram Button
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 13,
                  left: 15,
                  bottom: 15,
                ), // Margin for positioning
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0XFFE65AAEA), // Button background color
                  borderRadius: BorderRadius.circular(14), // Rounded corners
                ),
                child: Icon(
                  // Google Plus Button
                  FontAwesomeIcons.googlePlusG, // Google Plus icon
                  color: Colors.white, // Icon color
                  size: 30,
                ),
              ),
            ],
          ),
          Container(
            // Email Input Field
            margin: EdgeInsets.all(10), // Margin around the text field
            child: TextField(
              controller:
                  _textEditingController1, // Controller for the text field
              decoration: InputDecoration(
                hintText: "Email", // Placeholder text
                contentPadding: EdgeInsets.all(
                  20,
                ), // Padding inside the text field
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
              ),
            ),
          ),
          Container(
            // Password Input Field
            margin: EdgeInsets.all(10), // Margin around the text field
            child: TextField(
              controller:
                  _textEditingController2, // Controller for the text field
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                ), // Eye icon for password visibility
                hintText: "password", // Placeholder text
                contentPadding: EdgeInsets.all(
                  20,
                ), // Padding inside the text field
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {}, // Action for forgot password (currently empty)
            child: Text(
              "Forget password ?",
              style: TextStyle(fontSize: 16, color: Color(0XFF78746D)),
            ),
          ),
          // Login Button
          MaterialButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (Context) {
                    return HomeScreen(); // Navigate to HomeScreen when button is pressed
                  },
                ),
              );
            },

            child: Container(
              width: 500, // Button width
              height: 70, // Button height
              padding: EdgeInsets.all(16), // Padding inside the button
              decoration: BoxDecoration(
                color: Color(0xFFE3562A), // Button background color
                borderRadius: BorderRadius.circular(18), // Rounded corners
              ),
              child: Text(
                "Log in", // Button text
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ), // Style for button text
                textAlign: TextAlign.center, // Center the button text
              ),
            ),
          ),
          MaterialButton(
            // Sign Up Button
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (Context) {
                    return SingUpScreen(); // Navigate to SignUpScreen when button is pressed
                  },
                ),
              );
            },
            child: Text(
              "sign up", // Button text
              style: TextStyle(fontSize: 16, color: Color(0XFF78746D)),
            ),
          ),
        ],
      ),
    );
  }
}
