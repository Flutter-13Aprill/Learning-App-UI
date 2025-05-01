import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("lib/assets/icons/arrow.png"),
        title: Text("HTML", style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),),
      ),
      body: Column(
        children: [
            SizedBox(height: 64,),
          Image.asset("lib/assets/images/Illustration-6.png"),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Container(
                width: 63,
                height: 24,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFF65AAEA),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "\$ 50",
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 32,),
          Padding(
            padding: const EdgeInsets.only(left:16.0),
            child: Align(
               alignment: Alignment.topLeft,
              child: Text("About the course", style: GoogleFonts.rubik(textStyle: TextStyle( fontSize: 24, fontWeight: FontWeight.w500)))),
          ),
            SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Align(
               alignment: Alignment.topLeft,
              child: Text("You can launch a new career in web develop-", style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400 )))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Align(
               alignment: Alignment.topLeft,
              child: Text("ment today by learning HTML & CSS. You don't need", style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400 )))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("a computer science degree or expensive software. All", style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400 )))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("you need is a computer, a bit of time, a lot of", style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400 )))),
          ),
          Padding(
            padding: const EdgeInsets.only(left:16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("determination, and a teacher you trust.", style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400 )))),
          ),
            SizedBox(height: 32,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("Duration",  style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500 )))),
          ),
            SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("1 h 30 min", style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400 )))),
          ),
            SizedBox(height: 86,),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 48, right: 48),
                  child: SizedBox(
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetailPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFE3562A),
                        elevation: 0,
                        padding: EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Text(
                        "Add to cart",
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

