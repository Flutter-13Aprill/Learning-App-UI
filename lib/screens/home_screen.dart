import 'package:flutter/material.dart';

// --- Screens
import 'package:learning_app_ui/screens/course_details_screen.dart';

// --- Widgets
import 'package:learning_app_ui/widgets/home_widgets/course_card_widget.dart';
import 'package:learning_app_ui/widgets/home_widgets/row_category_chips_widget.dart';
import 'package:learning_app_ui/widgets/home_widgets/top_section_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Used to navigate to the course details screen.
  final aboutCourse = "You can launch a new career in web development today by learning HTML & CSS. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        margin: EdgeInsets.symmetric(horizontal: 16),

        child: ListView(

          children: [

            SizedBox(height: 8),

            TopSectionWidget(userName: 'Juana Antonieta'),
        
            SizedBox(height: 16),

            RowCategoryChipsWidget(),
        
            SizedBox(height: 32),
        
            CourseCardWidget(courseTitle: 'UI', courseSubtitle: 'Advanced mobile interface design', price: 50, duration: '3 h 30 min', imagePath: 'assets/images/home_images/Cool Kids Discussion.png'),

            SizedBox(height: 32),

            InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => CourseDetailsScreen(courseTitle: 'HTML', aboutCourse: aboutCourse, duration: '1 h 30 min', price: 50, imagePath: 'assets/images/course_details_images/Illustration (4).png'))),
              child: CourseCardWidget(courseTitle: 'HTML', courseSubtitle: 'Advanced web applications', price: 50, duration: '3 h 30 min', imagePath: 'assets/images/home_images/Cool Kids Alone Time.png')
              )
          ],
        ),
      ),
    );
  }
}
