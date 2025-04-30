import 'package:app_ui/pages/widgets/ContainerWithText_widget.dart';
import 'package:app_ui/pages/widgets/course/courseCard/courseCard_widget.dart';
import 'package:app_ui/pages/widgets/squarIconCountainer_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(21),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hello,"),
                      Text(
                        "Juana Antonieta",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Squariconcountainer(
                    back: false,
                    selectedIcon: Icons.notifications_none_rounded,
                  ),
                ],
              ),
              // -------------------  seearch -------------------------
              Column(
                spacing: 16,
                children: [
                  TextFormField(
                    initialValue: 'Search course ',
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                  // -------------------  Category -------------------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Category: "),
                      ContainerWithText(text: '#CSS'),
                      ContainerWithText(text: '#UX'),
                      ContainerWithText(text: '#Swift'),
                      ContainerWithText(text: '#UI'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // ------------------- show courses -------------------------
              Expanded(
                child: ListView(
                  children: [
                    CourseCard(
                      imagePath: 'assets/images/course/course1.png',
                      bgColor: Color.fromRGBO(248, 242, 238, 1),
                      price: '\$50',
                      title: 'UI',
                      subTitle: 'Advanced mobile interface design.',
                    ),
                    CourseCard(
                      imagePath: 'assets/images/course/course1.png',
                      bgColor: Color.fromRGBO(230, 237, 244, 1),
                      price: '\$50',
                      title: 'HTML',
                      subTitle: 'Advanced mobile interface design.',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
