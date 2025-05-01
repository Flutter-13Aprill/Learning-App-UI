import 'package:flutter/material.dart';
import 'package:learning_app/screens/prodect_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hello,',
                        style: TextStyle(fontSize: 16.0, color: Colors.black),
                      ),
                      Text(
                        'Juana Antonieta',
                        style: TextStyle(
                          fontSize: 32.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black12),
                    ),
                    child: const Icon(Icons.notifications_none,
                        size: 28, color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Search Field
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search course',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Category + Tags aligned with course card
              Row(
                children: [
                  const Text(
                    'Category:',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          tag('#CSS'),
                          tag('#UX'),
                          tag('#Swift'),
                          tag('#UI'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Course Cards
              buildCourseCard(
                context: context,
                imagePath: 'assets/images/image_8.png',
                title: 'UI',
                subtitle: 'Advanced mobile interface design',
                duration: '3 h 30 min',
                price: '\$50',
                bgColor: const Color(0xFFF8F2EE),
              ),
              buildCourseCard(
                context: context,
                imagePath: 'assets/images/image_7.png',
                title: 'HTML',
                subtitle:
                    'Learn the basics of HTML and how to structure web pages.',
                duration: '3 h 30 min',
                price: '\$50',
                bgColor: const Color(0xFFE6EDF4),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  static Widget tag(String text) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 3),
      decoration: BoxDecoration(
        color: const Color(0xFF65AAEA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  static Widget buildCourseCard({
    required BuildContext context,
    required String imagePath,
    required String title,
    required String subtitle,
    required String duration,
    required String price,
    required Color bgColor,
  }) {
    return GestureDetector(
      onTap: () {
        if (title == 'HTML') {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const ProdectDetailScreen()),
          );
        }
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xFFBEBAB3), width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Container with price overlay
            Container(
              width: double.infinity,
              height: 210,
              padding: const EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      imagePath,
                      width: 150,
                      height: 194,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    bottom: 12,
                    right: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: const Color(0xFF65AAEA),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        price,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Details
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Duration
                  Text(
                    duration,
                    style: const TextStyle(
                      color: Color(0xFF598C7E),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Title
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),

                  // Subtitle
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
