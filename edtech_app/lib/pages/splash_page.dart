import 'package:edtech_app/pages/intro_page1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override

void initState(){
  super.initState();
  Timer(const Duration(seconds: 3), (){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const IntroPage1()),
  );
});
}



  Widget build(BuildContext context) {
    return Scaffold(

    body: Column(children: [

      SizedBox(height: 215,),
    Container(
      width: 375,
      height: 326,
      child: Image.asset("lib/assets/images/Cool Kids On Wheels.png", fit: BoxFit.cover),
     
      ),
      SizedBox(height: 16,),
    Center(
      child: Text("CodeFactory", style: GoogleFonts.rubik(
        textStyle: TextStyle(
        color: Color(0xFF3C3A36), 
        fontSize: 40,
        fontWeight: FontWeight.w700,
        )
      ),),
    ),
    


    ],)


    );
  }
}