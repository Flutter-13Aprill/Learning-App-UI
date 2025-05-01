import 'package:codefactory/intro_1.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // first screen 
      body: Center(
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
           Image(image: AssetImage("images/firstpic.png") ,height: 300,width: 300,fit:BoxFit.contain,),

           Text("CodeFactory" , style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold),)

          ],
        ),
      ),
    );
  }
}