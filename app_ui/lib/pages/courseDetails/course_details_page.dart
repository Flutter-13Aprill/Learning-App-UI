import 'package:app_ui/pages/widgets/ContainerWithText_widget.dart';
import 'package:app_ui/pages/widgets/squarIconCountainer_widget.dart';
import 'package:flutter/material.dart';

class CourseDetailsPage extends StatelessWidget {
  const CourseDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTML"),
        leading: Squariconcountainer(
          back: true,
          selectedIcon: Icons.arrow_back_ios_new_rounded,
        ),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 24,
        ),
        centerTitle: true,
        // leading: ,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(21),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Image(
                    image: AssetImage("assets/images/course/courseDet.png"),
                    width: 375,
                    height: 264,
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 34,
                      width: 75,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: ContainerWithText(text: "\$ 50"),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "About the course",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 8),
                  const Text(
                    "You can launch a new career in web develop\n-ment today by learning HTML & CSS.You don't need \n a computer science degree or expensive software.\n All you need is a computer, a bit of time, a lot of\n determination, and a teacher you trust.",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 45),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Duration",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "1 h 30 min",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),

              SizedBox(
                width: 311,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text(
                    "Add to cart",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
