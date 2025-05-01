// import packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Main StatefulWidget 
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  IconData passwordIcon = CupertinoIcons.eye;
  bool passwordTextStatus = true;

  @override
  void initState() {
    super.initState();
   
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // AppBar
        appBar: AppBar(
          elevation: 0,
          leadingWidth: 75,
          toolbarHeight: 75,
          leading: Padding(
            padding: const EdgeInsets.all(8),
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(), // Go back to previous screen
              child: Container(
                width: double.infinity,
                height: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey),
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                  size: 20.0,
                ),
              ),
            ),
          ),
          title: Text(
            '',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          centerTitle: true,
        ),

        // Body of the signup
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Signup image
                  Image.asset(
                    'assets/images/signup.png',
                    fit: BoxFit.cover,
                  ),

                  // text "Sign up"
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    width: double.infinity,
                    child: Text(
                      "Sign up",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),

                  // Subtext
                  Text(
                    "Create your account",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),

                  const SizedBox(height: 15.0),

                  // Name input field
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Name",
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(width: 2),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15.0),

                  // Email input field
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(width: 2),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15.0),

                  // Password input 
                  TextField(
                    obscureText: passwordTextStatus,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {
                          
                          setState(() {
                            passwordTextStatus = !passwordTextStatus;
                            passwordIcon = passwordTextStatus
                                ? CupertinoIcons.eye
                                : CupertinoIcons.eye_slash;
                          });
                        },
                        child: Icon(
                          passwordIcon,
                          size: 30.0,
                        ),
                      ),
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(width: 2),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15.0),

                  // Signup button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Sign up',
                          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                  ),

                  // Link to go back to login
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop(); // Navigate back
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      width: double.infinity,
                      child: Text(
                        "Log in",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelSmall!.copyWith(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
