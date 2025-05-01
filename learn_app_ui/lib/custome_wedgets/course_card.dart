//import material & badgewedget & course class
import 'package:learn_app_ui/classes/course_class.dart';
import 'package:learn_app_ui/custome_wedgets/badge_widget.dart';
import 'package:flutter/material.dart';
// course card class
class CourseCard extends StatelessWidget {
  final Course course;
  final VoidCallback? onPressed;
  const CourseCard({super.key, required this.course, this.onPressed});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onPressed,
      //the card of course
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: const  BorderSide(
            width: 2.0,
            
          ),
        ),
        elevation: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                //image of course
                Container(
                  width: double.infinity,
                  height: 250.0,
                  child: Image.asset(
                    course.imageURL,
                  ),
                ),
                 Positioned(
                  bottom: 20,
                  right: 20,
                  //course price
                  child: BadgeWidget(
                    text: "\$ ${course.price}",
                  ),
                ),
              ],
            ),
            Container(
              
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // duration text
                  Text(
                    course.duration,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(
                      
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  //the title
                  Text(
                    course.title,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(
                      
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  //short description for the course
                  Text(
                    course.shortDescription,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(
                      
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
