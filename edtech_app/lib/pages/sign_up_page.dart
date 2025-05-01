import 'package:edtech_app/pages/home_page.dart';
import 'package:edtech_app/pages/log_in_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(children: [
        SizedBox(height: 184,),
        Image.asset("lib/assets/images/illustration-5.png"),
         SizedBox(height: 16,),
        Text("Sign up",style: GoogleFonts.rubik(
            textStyle: TextStyle(
             color: Color(0xFF3C3A36),
             fontSize: 24,
             fontWeight: FontWeight.w500,
            
            ))),
         SizedBox(height: 12,),
        Text("Create your account", style: GoogleFonts.rubik(
            textStyle: TextStyle(
             color: Color(0xFF78746D),
             fontSize: 12,
           
            
            ))),
        SizedBox(height: 14,),
   Padding(
          padding: const EdgeInsets.only(left:16.0, right:16.0),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Name",
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
      suffixIcon: Image.asset("lib/assets/icons/Password Icons.png"),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ),
),

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
                  child: Text("Sign up", style: GoogleFonts.rubik( textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w500), 
                  ),
                  ),
                  ),
            ),
          
 
 

SizedBox(height: 16,),
InkWell(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LogInPage() ));
  },
  child: 
  Text("Log in", style: GoogleFonts.rubik( textStyle: TextStyle(color: Color(0xFF78746D)),))),
 

        
      ],)
    );
  }
}