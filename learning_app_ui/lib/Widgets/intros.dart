import 'package:flutter/material.dart';

// A widget representing the intro screen with an image, title, and description.
class Intros extends StatelessWidget {
  final img;
  final title;
  final description;
  const Intros({super.key, this.img, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8,
      children: [
        // Image path from the constructor
        Image.asset("$img", width: 375, height: 264),

        // Title text
        Text(
          "$title",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Color(0xff3C3A36),
          ),
        ),

        // Description text
        Text(
          "$description",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xff78746D),
          ),
        ),
      ],
    );
  }
}
