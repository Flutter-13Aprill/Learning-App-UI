import 'package:flutter/material.dart';
import 'package:learning_app_ui/Screens/login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              width: 343,
              height: 253,
              child: Image.asset("assets/images/signupImage.png")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(children: [
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  "Sign up",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Create your account",
                  style: TextStyle(
                      fontSize: 14, color: Color.fromARGB(255, 120, 116, 109)),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                    height: 53,
                    width: 343,
                    child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12))))),
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
                
                const SizedBox(
                  height: 24,
                ),
                InkWell(
                    onTap: () {},
                    child: Container(
                      width: 343,
                      height: 56,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color.fromARGB(255, 227, 86, 42)),
                      child: const Center(
                        child: Text(
                          "Sign Up",
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
                    onTap: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));},
                    child: const Text("Log in",
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
