import 'package:edtech_app/pages/product_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 32.0, right: 32.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 80),
                  Text(
                    "Hello,",
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Juana Antonieta",
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        color: Color(0xFF333333),
                        fontWeight: FontWeight.w500,
                        fontSize: 32,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    height: 65,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search course",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Image.asset(
                          'lib/assets/icons/Search Icon.png',
                          width: 24,
                          height: 24,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      SizedBox(width: 2),
                      Text(
                        "Category",
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            color: Color(0xFF3C3A36),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Container(
                        width: 54,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Color(0xFF65AAEA),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "#CSS",
                            style: GoogleFonts.rubik(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Container(
                        width: 47,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Color(0xFF65AAEA),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "#UX",
                            style: GoogleFonts.rubik(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Container(
                        width: 62,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Color(0xFF65AAEA),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "#Swift",
                            style: GoogleFonts.rubik(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Container(
                        width: 43,
                        height: 24,
                        decoration: BoxDecoration(
                          color: Color(0xFF65AAEA),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "#UI",
                            style: GoogleFonts.rubik(
                              textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                   SizedBox(height: 16),
                  Column(
                    children: [
                  
                      Container(
                        width: 400,
                        height: 194,
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F2EE),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                          border: Border(
                            top: BorderSide(color: Color(0xFFBDBDBD)),
                            left: BorderSide(color: Color(0xFFBDBDBD)),
                            right: BorderSide(color: Color(0xFFBDBDBD)),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                          child: Image.asset(
                            "lib/assets/images/Cool Kids Discussion.png",
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
              
                     
                      Container(
                        width: 400,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F2EE),
                          border: Border(
                            left: BorderSide(color: Color(0xFFBDBDBD)),
                            right: BorderSide(color: Color(0xFFBDBDBD)),
                          ),
                        ),
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
              
                    
                      Container(
                        width: 400,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                          border: Border(
                            left: BorderSide(color: Color(0xFFBDBDBD)),
                            right: BorderSide(color: Color(0xFFBDBDBD)),
                            bottom: BorderSide(color: Color(0xFFBDBDBD)),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("3 h 30 min", style: GoogleFonts.rubik(textStyle: TextStyle(color: Color(0xFF5BA092), fontSize: 12)),),
                            SizedBox(height: 4),
                            Text("UI", style: GoogleFonts.rubik(textStyle: TextStyle(color: Color(0xFF3C3A36), fontSize: 24, fontWeight: FontWeight.w500)),),
                            SizedBox(height: 4),
                            Text("Advanced mobile interface design", style: GoogleFonts.rubik(textStyle: TextStyle(color: Color(0xFF3C3A36), fontSize: 14,)),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                   InkWell(
                    onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailPage()));
                    },
                     child: Column(
                      children: [
                      
                        Container(
                          width: 400,
                          height: 194,
                          decoration: BoxDecoration(
                            color: Color(0xFFF8F2EE),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            border: Border(
                              top: BorderSide(color: Color(0xFFBDBDBD)),
                              left: BorderSide(color: Color(0xFFBDBDBD)),
                              right: BorderSide(color: Color(0xFFBDBDBD)),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            child: Image.asset(
                              "lib/assets/images/Cool Kids Alone Time.png",
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                                   
                        
                        Container(
                          width: 400,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xFFF8F2EE),
                            border: Border(
                              left: BorderSide(color: Color(0xFFBDBDBD)),
                              right: BorderSide(color: Color(0xFFBDBDBD)),
                            ),
                          ),
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
                                   
                       
                        Container(
                          width: 400,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            ),
                            border: Border(
                              left: BorderSide(color: Color(0xFFBDBDBD)),
                              right: BorderSide(color: Color(0xFFBDBDBD)),
                              bottom: BorderSide(color: Color(0xFFBDBDBD)),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("3 h 30 min", style: GoogleFonts.rubik(textStyle: TextStyle(color: Color(0xFF5BA092), fontSize: 12)),),
                              SizedBox(height: 4),
                              Text("HTML", style: GoogleFonts.rubik(textStyle: TextStyle(color: Color(0xFF3C3A36), fontSize: 24, fontWeight: FontWeight.w500)),),
                              SizedBox(height: 4),
                              Text("Advanced web applications", style: GoogleFonts.rubik(textStyle: TextStyle(color: Color(0xFF3C3A36), fontSize: 14,)),),
                            ],
                          ),
                        ),
                      ],
                                       ),
                   ),
                ],
              ),
            ),
            Positioned(
              top: 80,
              right: 0,
              child: Image.asset(
                "lib/assets/icons/bell.png",
                width: 48,
                height: 48,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}





