import 'package:edtech_app/pages/log_in_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [ Padding(
          padding: const EdgeInsets.only(right:32.0),
          child: Text("Skip", style: GoogleFonts.rubik(
          textStyle: TextStyle(
          color: Color(0xFF78746D), 
          fontSize: 14,
          )
                 
          )),
        )],
      ),
      body: Column(children: 
      [
        SizedBox(height: 120,),
        
         Container(
           width: 375,
           height: 264,
          child: Image.asset("lib/assets/images/illustration-3.png",
          fit: BoxFit.fill)
          ),

          SizedBox(height: 16,),
           SizedBox(height: 16,),
      
      
        Center(
          child: Text("Improve your skills", style: GoogleFonts.rubik(
            textStyle: TextStyle(
             color: Color(0xFF3C3A36),
             fontSize: 24,
             fontWeight: FontWeight.w500,
            )
          ),),
        ),
        SizedBox(height: 12,),
        Center(
          child: Text("Quarantine is the perdect time to spend your", style: GoogleFonts.rubik(
            textStyle: TextStyle(
             color: Color(0xFF78746D),
             fontSize: 14,
             
            )
          ),),
        ),
        Center(
          child: Text("day learning something new, from anywhere!", style: GoogleFonts.rubik(
            textStyle: TextStyle(
             color: Color(0xFF78746D),
             fontSize: 14,
            
            )
          ),),
        ),
        SizedBox(height: 48,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
          SizedBox(width: 12,),
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color(0xFFD5D4D4),  
            ),
          ),
          SizedBox(width: 12,),
          Container(
              width: 6,
            height: 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Color(0xFFD5D4D4),  
            ),
          ),
          SizedBox(width: 12,),
            Container(
            width: 16,
            height: 6,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Color(0xFF65AAEA),  
            ),
          ),
        ],),
        
         SizedBox(height: 150,),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 50),
  child: Row(children: [
  
          Expanded(
            child: SizedBox(
              height: 56,
              child: ElevatedButton(
                  onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => LogInPage()));
                  }, style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFE3562A),
                    elevation: 0,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12 ) ,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
                
                  ),
                  child: Text("Let's Start", style: GoogleFonts.rubik( textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w500), )),
                  ),
            ),
          ),
  
  ],),
)
        ],
        )
    );
  }
}