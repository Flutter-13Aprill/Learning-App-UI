import 'package:flutter/material.dart';
import 'package:learn_app_norah/course_details.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hello,',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff3c3a36),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffbebab3)),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Icon(
                        Icons.notifications_none,
                        color: Colors.black,
                        size: 28,
                      ),
                    ),
                  ],
                ),

                Text(
                  'Juana Antonieta',
                  style: TextStyle(
                    color: Color(0xff333333),
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 8,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          size: 32,
                          color: Color(0xff3c3a36),
                        ),
                      ),
                      hintText: 'Search course ',
                      hintStyle: TextStyle(color: const Color(0xff78746d)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: const Color(0xffbebab3)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Category: ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff3c3a36),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xff65aaea),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          '#CSS',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),

                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xff65aaea),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          '#UX',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xff65aaea),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          '#Swift',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xff65aaea),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          '#UI',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffbebab3)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 343,
                              height: 160,
                              color: Color(0xfff8f2ee),
                            ),
                            Image.asset(
                              'assets/images/homepic1.png',
                              width: 300,
                              height: 130,
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,

                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xff65aaea),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  '\$50',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 10),
                          child: Text(
                            '3 h 30 min ',
                            style: TextStyle(
                              color: Color(0xff5ba092),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'UI ',
                            style: TextStyle(
                              color: Color(0xff3c3a36),
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            bottom: 10,
                          ),
                          child: Text(
                            'Advanced mobile interface design ',
                            style: TextStyle(
                              color: Color(0xff3c3a36),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffbebab3)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 343,
                              height: 160,
                              color: Color(0xffe6edf4),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CourseDetails(),
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/images/homepic2.png',
                                width: 300,
                                height: 130,
                              ),
                            ),

                            Positioned(
                              bottom: 0,
                              right: 0,

                              child: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xff65aaea),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  '\$50',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 10),
                          child: Text(
                            '3 h 30 min ',
                            style: TextStyle(
                              color: Color(0xff5ba092),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'HTML ',
                            style: TextStyle(
                              color: Color(0xff3c3a36),
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            bottom: 10,
                          ),
                          child: Text(
                            'Advanced mobile interface design ',
                            style: TextStyle(
                              color: Color(0xff3c3a36),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
