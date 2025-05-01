import 'package:edtech_app/pages/home_page.dart';
import 'package:edtech_app/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(height: 170,),
        Image.asset("lib/assets/images/illustration-4.png"),
         SizedBox(height: 16,),
        Text("Log in",style: GoogleFonts.rubik(
            textStyle: TextStyle(
             color: Color(0xFF3C3A36),
             fontSize: 24,
             fontWeight: FontWeight.w500,
            
            ))),
         SizedBox(height: 12,),
        Text("Login with social network", style: GoogleFonts.rubik(
            textStyle: TextStyle(
             color: Color(0xFF78746D),
             fontSize: 12,
           
            
            ))),
        SizedBox(height: 14,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
            SizedBox(
              width: 40,
              height: 40,
              child: Image.asset("lib/assets/icons/Social Buttons-3.png", fit: BoxFit.fill,)),
              SizedBox(width: 14,),
            SizedBox(
              width: 40,
              height: 40,
              child: Image.asset("lib/assets/icons/Social Buttons-2.png", fit: BoxFit.fill)),
          SizedBox(width: 14,),
            SizedBox(
              width: 40,
              height: 40,
              child: Image.asset("lib/assets/icons/Social Buttons.png", fit: BoxFit.fill)),
          ],),
        SizedBox(height: 16,),
        Padding(
          padding: const EdgeInsets.only(left:16.0, right:16.0),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
SizedBox(height: 16,),
Padding(
  padding: const EdgeInsets.only(left:16.0, right:16.0),
  child: TextField(
    keyboardType: TextInputType.visiblePassword,
    decoration: InputDecoration(
      hintText: "Password",
      suffixIcon: Image.asset("lib/assets/icons/visibility 1.png"),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),
),
SizedBox(height: 16,),
Text("Forgot Password?", style: GoogleFonts.rubik( textStyle: TextStyle(color: Color(0xFF78746D)),)),
SizedBox(height: 16,),


  
  
       SizedBox(
              height: 56,
              width: 400,
              child: ElevatedButton(
                  onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  }, style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFE3562A),
                    elevation: 0,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12 ) ,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
                
                  ),
                  child: Text("Log in", style: GoogleFonts.rubik( textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w500), 
                  ),
                  ),
                  ),
            ),
          
 
 

SizedBox(height: 16,),
InkWell(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage() ));
  },
  child: 
  Text("Sign up", style: GoogleFonts.rubik( textStyle: TextStyle(color: Color(0xFF78746D)),))),
 

        
      ],)
    );
  }
}