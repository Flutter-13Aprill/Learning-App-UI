import 'package:assignment7/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _HomePageState();
}

class _HomePageState extends State<SplashScreen> {

@override
void initState(){
  super.initState();
  //Here where the splash screen stays for 3 sec and then go to the onboarding_screen 
  Future.delayed(Duration(seconds: 3),(){

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnboardingScreen()));


  });

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Center(
        child: SizedBox(width: 200,height: 500,
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,spacing: 16,
          
            
          
          children: [
          
          
          
            // splash screen design
            Image.asset('assets/images/splashScreenImage.png',width: 300,height: 300,),
            Text('CodeFactory',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
          ],
          
          ),
        ),
      ),
      



    );
  }
}