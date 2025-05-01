//import packages and pages
import 'package:learn_app_ui/custome_wedgets/badge_widget.dart';
import "package:learn_app_ui/custome_wedgets/search_input.dart";
import 'package:learn_app_ui/custome_wedgets/course_card.dart';
import 'package:learn_app_ui/classes/course_class.dart';
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
//main fulwidget class
class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //starting from safe area
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              // welcoming the user
              ListTile(
                contentPadding: const EdgeInsets.all(0.0),
                title: Text(
                  "Hello,ahmed",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        
                      ),
                ),
                subtitle: Text(
                  '',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        
                        fontWeight: FontWeight.w900,
                      ),
                ),
                //navigations button
                trailing: Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      
                    ),
                  ),
                  child: const Icon(
                    CupertinoIcons.bell,
                    
                  ),
                ),
              ),
              const SizedBox(
                height: 8
              ),
              Column(
                // search field
                children: [
                  SearchInput(
                    text: "Search course",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        "Category:",
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              fontSize: 17.0,
                            ),
                      ),
                      const Expanded(
                        //badge widgets
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              BadgeWidget(text: "#CSS"),
                              BadgeWidget(text: "#UX"),
                              BadgeWidget(text: "#Swift"),
                              BadgeWidget(text: "#UI"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
               Expanded(
                //build the courses
                child: ListView.builder(
                  itemBuilder: (context, index) =>
                      CourseCard(course: coursesList[index],onPressed: (){
                      
                      },),
                  itemCount: coursesList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
const List<Course> coursesList = [
  Course(
      title: "UI",
      imageURL: "assets/images/UI.png",
      shortDescription: "Advanced mobile Interface design",
      description: "Advanced mobile Interface design",
      price: 50.0,
      category: "ui",
      duration: "2 h 30 min"),
  Course(
      title: "UI Advanced",
      imageURL: "assets/images/UI-advanced.png",
      shortDescription: "Advanced web application design",
      description: "Advanced web application design",
      price: 70.0,
      category: "ui",
      duration: "5 h 30 min"),
  Course(
      title: "HTML",
      imageURL: "assets/images/html.png",
      shortDescription: "Build web pages structure",
      description:
          "You can launch a new career in web development today by learning HTML & CSS. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust.",
      price: 40.0,
      category: "code",
      duration: "1 h 20 min"),
];
