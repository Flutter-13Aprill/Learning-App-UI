import 'package:apr30/CustomWidgets/Login/Signup%20Widgets/email_field.dart';
import 'package:apr30/CustomWidgets/Login/Signup%20Widgets/name_field.dart';
import 'package:apr30/CustomWidgets/Login/Signup%20Widgets/password_field.dart';
import 'package:apr30/Screens/home_screen.dart';
import 'package:apr30/Screens/login_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  bool showClearIcon = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("Assets/Images/Signup.png"),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "Signup",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  Text(
                    "Create your account",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                NameField(nameController: _nameController),
                SizedBox(height: 10),
                EmailField(emailController: _emailController),
                const SizedBox(height: 10),
                PasswordField(passwordController: _passwordController),

                const SizedBox(height: 32.0),
                SizedBox(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 222, 119, 115),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    child: const Text("Signup"),
                  ),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text("Login"),
                ),
                const SizedBox(height: 32.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
