import 'package:flutter/material.dart';
import 'package:learn_app_norah/view/auth/loginscreen.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/signup.png",
              height: 250,
              width: 200,
              fit: BoxFit.fill,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15, right: 20),
              child: Text(
                '''Sign up ''',
                style: TextStyle(
                  color: Color(0xff3c3a36),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7, top: 4, bottom: 10),
              child: Text(
                '''Create your account''',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xff78746d),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 2),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  hintStyle: TextStyle(color: const Color(0xff78746d)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color(0xffbebab3)),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'E-mail',
                  hintStyle: TextStyle(color: const Color(0xff78746d)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color(0xffbebab3)),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.visibility_off,
                      color: Color(0xff3c3a36),
                    ),
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: const Color(0xff78746d)),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: const Color(0xffbebab3)),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),

            Stack(
              alignment: Alignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Color(0xffe3562a),
                    ),
                    width: 311,
                    height: 56,
                  ),
                ),
                Text(
                  'Sign up',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xffffffff),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text(
                '''Login in''',
                style: TextStyle(
                  color: Color(0xff78746d),
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
