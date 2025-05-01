import 'package:apr30/Screens/course_details_screen.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.color,
  });
  // Properties
  final String imagePath;
  final String title;
  final String subtitle;
  final String price;
  final Color color;

  @override
  Widget build(BuildContext context) {
    // Build a course card with an image, title, subtitle, and price
    return InkWell(
      // When the card is tapped, navigate to the CourseDetailsScreen
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => CourseDetailsScreen()));
      },
      // Create a card with rounded corners and elevation
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  color: color,
                  padding: EdgeInsets.all(32),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                    child: Image.asset(
                      imagePath,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(101, 170, 234, 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      price,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "3 h 30 min",
                    style: TextStyle(color: Color.fromRGBO(91, 160, 146, 1)),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(subtitle, style: TextStyle(color: Colors.grey.shade600)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
