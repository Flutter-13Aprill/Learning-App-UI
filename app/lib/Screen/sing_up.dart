import 'package:app/Screen/home_screen.dart';
import 'package:app/Screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreen();
}

class _SingUpScreen extends State<SingUpScreen> {
  // Controller for the Tex field
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(), // App bar at the top of the screen
      backgroundColor: Colors.white, // Set background color of the screen
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            // Center the column vertically
            child: Container(
              width: 300, // Set width of the image container
              height: 300, // Set height of the image container
              alignment: Alignment(1, .5), // Align image within the container
              child: Image.asset(
                "assest/images/6.png",
                fit: BoxFit.fill,
              ), // Load the image
            ),
          ),
          Text(
            // Title of the screen
            "Sign up",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ), // Style for the title
          ),
          Text(
            // Subtitle for account creation
            "create your acount",
            style: TextStyle(
              fontSize: 17,
              color:  Color(0XFF78746D), // Subtitle color
            ),
          ),
          Container(
            margin: EdgeInsets.all(10), // Margin around the text field
            child: TextField(
              controller:
                  _nameController, // Link the controller to the name field
              decoration: InputDecoration(
                hintText: "Name", // Placeholder text
                contentPadding: EdgeInsets.all(20),
                border: OutlineInputBorder(
                  // Padding inside the text field
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
              ),
            ),
          ),
          Container(
            // Email Input Field
            margin: EdgeInsets.all(10), // Margin around the text field
            child: TextField(
              controller:
                  _emailController, // Link the controller to the email field
              decoration: InputDecoration(
                hintText: "E-mail", // Placeholder text
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
                  _passwordController, // Link the controller to the password field
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.visibility_off,
                ), // Icon for password visibility
                hintText: "password",
                contentPadding: EdgeInsets.all(
                  20,
                ), // Padding inside the text field
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              String name =
                  _nameController.text; // Get the value of the name field
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (Context) {
                    return HomeScreen(
                      name: name, // Pass the name to the HomeScreen
                    );
                  },
                ),
              );
            },
            child: Container(
              // Margin for positioning
              margin: EdgeInsets.only(bottom: 10, top: 10),
              width: 700, // Button width and height
              height: 70,
              padding: EdgeInsets.all(18), // Padding inside the button
              decoration: BoxDecoration(
                color: Color(0xFFE3562A), // Button background color
                borderRadius: BorderRadius.circular(18),
              ),
              child: Text(
                "Sing up", // Button text
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center, // Center the button text
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  //Navigat to LoginScreen
                  builder: (Context) {
                    return LoginScreen();
                  },
                ),
              );
            },

            // Log In Button
            child: Text(
              "Log in",
              style: TextStyle(
                fontSize: 16,
                color:  Color(0XFF78746D),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of the controllers when the widget is removed
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
