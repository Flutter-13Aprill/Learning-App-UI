import 'package:flutter/material.dart';
import 'package:learning_app_ui/Screens/home_screen.dart';
import 'package:learning_app_ui/Screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              width: 343,
              height: 253,
              child: Image.asset("assets/images/loginImage.png")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(children: [
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  "Log in",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Login with Social Networks",
                  style: TextStyle(
                      fontSize: 14, color: Color.fromARGB(255, 120, 116, 109)),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Image.asset("assets/icons/Facebook_Icon.png"),
                    const SizedBox(
                      width: 12,
                    ),
                    Image.asset("assets/icons/Instagram_Icon.png"),
                    const SizedBox(
                      width: 12,
                    ),
                    Image.asset("assets/icons/Google_Icon.png"),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                    height: 53,
                    width: 343,
                    child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Email",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12))))),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                    height: 53,
                    width: 343,
                    child: TextField(
                        decoration: InputDecoration(
                            suffixIcon:
                                const Icon(Icons.visibility_off_outlined),
                            hintText: "Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12))))),
                const SizedBox(
                  height: 24,
                ),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "Forget Password?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 120, 116, 109)),
                    )),
                const SizedBox(
                  height: 24,
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    child: Container(
                      width: 343,
                      height: 56,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color.fromARGB(255, 227, 86, 42)),
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 18,
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupScreen()));
                    },
                    child: const Text("Sign Up",
                        style: TextStyle(
                            color: Color.fromARGB(255, 120, 116, 109),
                            fontWeight: FontWeight.bold))),
              ])
            ],
          )
        ],
      ),
    );
  }
}
