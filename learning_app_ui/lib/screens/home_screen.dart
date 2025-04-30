import 'package:flutter/material.dart';
import 'package:learning_app_ui/screens/html_details.dart';
import 'package:learning_app_ui/screens/ui_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hello,", style: TextStyle(fontSize: 18)),
                          SizedBox(height: 5),
                          Text(
                            "Remas Alnugaithan",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.notifications_none),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),
                  SearchBar(
                    elevation: WidgetStatePropertyAll(0),
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                    hintText: "Search course",
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    trailing: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/icons/search-icon.png"),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Row(
                      children: [
                        Text("Category: "),
                        SizedBox(width: 16),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xff65AAEA),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 10,
                            ),
                            child: Text(
                              "#CSS",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 16),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xff65AAEA),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 10,
                            ),
                            child: Text(
                              "#UX",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 16),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xff65AAEA),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 10,
                            ),
                            child: Text(
                              "#Swift",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 16),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xff65AAEA),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 10,
                            ),
                            child: Text(
                              "#UI",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UIDetailsScreen(),
                          ),
                        ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xffBEBAB3)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              Container(
                                width: 400,
                                height: 194,
                                color: Color(0xffF8F2EE),

                                child: Padding(
                                  padding: const EdgeInsets.all(24),
                                  child: Image.asset(
                                    "assets/images/Course1Image.png",
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 12,
                                right: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xff65AAEA),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 4,
                                      horizontal: 24,
                                    ),
                                    child: Text(
                                      "\$ 50",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "3 h 30 min",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff5BA092),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "UI",
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "Advanced mobile interface design",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  InkWell(
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HtmlDetailsScreen(),
                          ),
                        ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xffBEBAB3)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              Container(
                                width: 400,
                                height: 194,
                                color: Color(0xffE6EDF4),

                                child: Padding(
                                  padding: const EdgeInsets.all(24),
                                  child: Image.asset(
                                    "assets/images/Course2Image.png",
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 12,
                                right: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xff65AAEA),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 4,
                                      horizontal: 24,
                                    ),
                                    child: Text(
                                      "\$ 80",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "4 h 30 min",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff5BA092),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "HTML",
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "Mastering HTML for Advanced Web Interfaces",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
