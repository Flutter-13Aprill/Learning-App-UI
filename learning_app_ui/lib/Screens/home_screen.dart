import 'package:flutter/material.dart';
import 'package:learning_app_ui/Screens/product_details_screen.dart';
import 'package:learning_app_ui/Widgets/Courses/course_card_first.dart';
import 'package:learning_app_ui/Widgets/Courses/course_card_second.dart';
import 'package:learning_app_ui/Widgets/Tags/tags.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Align(
          alignment: Alignment.topLeft,
          child: RichText(
            text: const TextSpan(
                text: "Hello,",
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                      text: "\nJuana Antonieta",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 32))
                ]),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black)),
              child: const Icon(Icons.notifications_none_outlined),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Center(
              child: SizedBox(
                  height: 53,
                  child: TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: const Icon(Icons.search_outlined),
                          hintText: "Search Course",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))))),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                SizedBox(
                  width: 355,
                  height: 24,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const Text("Category: "),
                      const SizedBox(
                        width: 16,
                      ),
                      InkWell(onTap: () {}, child: const Tags(tagName: "CSS")),
                      const SizedBox(
                        width: 16,
                      ),
                      InkWell(onTap: () {}, child: const Tags(tagName: "UX")),
                      const SizedBox(
                        width: 16,
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Tags(tagName: "Swift"),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      InkWell(onTap: () {}, child: const Tags(tagName: "UI")),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: ListView(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProductDetailScreen()));
                    },
                    child: const CourseCardFirst(
                        title: "UI",
                        subTitle: "Advanced mobile interface design",
                        imagePath: "assets/images/course_back1.png"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProductDetailScreen()));
                    },
                    child: const CourseCardSecond(
                        title: "HTML",
                        subTitle: "Advanced web applications",
                        imagePath: "assets/images/course_back2.png"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
