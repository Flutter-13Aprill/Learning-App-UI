import 'package:app_ui/pages/courseDetails/course_details_page.dart';
import 'package:app_ui/pages/widgets/ContainerWithText_widget.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({super.key,required this.imagePath,required this.bgColor,required this.title,required this.subTitle,required this.price});
  final String imagePath;
  final String title;
  final String subTitle;
  final Color bgColor;
  final String price;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CourseDetailsPage()),
          ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.black38),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: bgColor,
                    // color: Color.fromRGBO(248, 242, 238, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        width: 343,
                        height: 138,
                        imagePath,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ContainerWithText(text: price,),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 343,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "1 h 30 min",
                        style: TextStyle(fontSize: 16, color: Colors.green),
                      ),
                       Text(
                        title,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                       Text(
                       subTitle,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
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
