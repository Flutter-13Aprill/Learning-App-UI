import 'package:flutter/material.dart';
import 'package:learn_app_norah/homescreen.dart';
import 'package:learn_app_norah/view/auth/signupscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/login.png",
            height: 250,
            width: 200,
            fit: BoxFit.fill,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15, right: 20),
            child: Text(
              '''Log in''',
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
              '''Login with social networks''',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xff78746d),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xff65aaea),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset('assets/images/facebook.png'),
                ),
              ),

              SizedBox(width: 16),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xff65aaea),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset('assets/images/instgram.png'),
                ),
              ),
              SizedBox(width: 16),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xff65aaea),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset('assets/images/google.png'),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Email',
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
          TextButton(
            onPressed: () {},
            child: Text(
              '''Forgot Password?''',
              style: TextStyle(
                color: Color(0xff78746d),
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homescreen()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Color(0xffe3562a),
                  ),
                  width: 311,
                  height: 56,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homescreen()),
                  );
                },
                child: Text(
                  'Log in',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Signupscreen()),
              );
            },
            child: Text(
              '''Sign up''',
              style: TextStyle(
                color: Color(0xff78746d),
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
