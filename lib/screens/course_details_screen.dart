import 'package:flutter/material.dart';

/// [CourseDetails] Represent course details 
class CourseDetailsScreen extends StatelessWidget {

  const CourseDetailsScreen({super.key, required this.courseTitle, required this.aboutCourse, required this.duration, required this.price, required this.imagePath,});

  final String courseTitle;
  final String aboutCourse;
  final String imagePath;
  final String duration;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Container(
            width: 40,
            height: 40,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffBEBAB3), width: 1),
            borderRadius: BorderRadius.circular(24)
          ),
          child: Image.asset('assets/icons/course_details_icons/Go-back.png')
          )
        ),
        title: Text(
          courseTitle,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.5,
          ),
        ),
      ),

      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 16),

            Image.asset(
              'assets/images/course_details_images/Illustration (4).png',
            ),

            SizedBox(height: 24),

            Align(
              alignment: Alignment.centerRight,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(right: 16, bottom: 8),
                width: 63,
                height: 24,
                decoration: BoxDecoration(
                  color: Color(0xff65AAEA),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  '\$$price',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            SizedBox(height: 24),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             
              children: [
                Text(
                  'About Course',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff3C3A36),
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  aboutCourse,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff3C3A36),
                  ),
                ),
                
                SizedBox(height: 32),

                Text(
                  'Duration',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff3C3A36),
                  ),
                ),

                Text(
                  duration,
                  style: TextStyle(fontSize: 14, color: Color(0xff3C3A36)),
                ),
              ],
            ),

            SizedBox(height: 160),

            Container(
              width: double.infinity,
              height: 56,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffE3562A),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                'Add to cart',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
                ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
