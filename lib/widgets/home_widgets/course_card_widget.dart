import 'package:flutter/material.dart';

/// [CourseCardWidget] shows basic course info like name, price, and description.
class CourseCardWidget extends StatelessWidget {
  const CourseCardWidget({
    super.key,
    required this.courseTitle,
    required this.courseSubtitle,
    required this.price,
    required this.duration,
    required this.imagePath,
  });

  final String courseTitle;
  final String courseSubtitle;
  final String duration;
  final String imagePath;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 297,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Color(0xffBEBAB3)),
        borderRadius: BorderRadius.circular(8),
      ),

      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 194,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: courseTitle == 'UI' ? Color(0xffF8F2EE) : Color(0xffE6EDF4),
            ),
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,

                  child: Image.asset(imagePath),
                ),

                Positioned(
                  right: 1,
                  bottom: 1,
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
              ],
            ),
          ),

          SizedBox(height: 16),

          Container(
            margin: EdgeInsets.only(left: 16),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 4,
              children: [
                Text(
                  duration,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff5BA092),
                  ),
                ),

                Text(
                  courseTitle,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff3C3A36),
                  ),
                ),

                Text(
                  courseSubtitle,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff3C3A36),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
