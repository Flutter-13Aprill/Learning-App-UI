import 'package:flutter/material.dart';
import 'product_detail.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> categories = ['#CSS', '#UX', '#Swift', '#UI'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 20, 16, 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Hello,\nJuana Antonieta',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Icon(Icons.notifications_none),
                  ],
                ),
              ),

              // Search bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search course',
                    hintStyle: const TextStyle(fontSize: 12),
                    suffixIcon : const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Categories
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    const Text(
                      'Category:',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),

                //Chip: Displays each category as a small box with a colored background.
                //Wrap is used to allow automatic rearrangement of items based on the available space.
                    const SizedBox(width: 4),
                    Expanded(
                      child: Wrap(
                      spacing: 4,
                      children: categories.map((cat) => Chip(
                      label: Text(
                      cat,
                      style: const TextStyle(fontSize: 10),
                      ),
                      backgroundColor: const Color.fromARGB(255, 121, 203, 241),
                      )).toList(),
                      )

                    ),
                  ],
                ),
              ),

              const SizedBox(height: 14),

              // Course 1
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductDetail(
                          title: 'UI',
                          duration: '3h, 30m',
                          price: 50,
                        ),
                      ),
                    );
                  },
                  child: buildCourseBox(
                    image: 'assets/pic3/homeScreen1.png',
                    color: const Color(0xFFF5F5DC),
                    title: 'UI',
                    duration: '3h, 30m',
                    description: 'Advanced mobile interface design',
                  ),
                ),
              ),

              // Course 2
              //GestureDetector: When the course box is tapped, it navigates to the course details page using Navigator.push.
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductDetail(
                          title: 'HTML',
                          duration: '2h, 15m',
                          price: 50,
                        ),
                      ),
                    );
                  },
                  child: buildCourseBox(
                    image: 'assets/pic3/homeScreen2.png',
                    color: const Color(0xFFB3E5FC),
                    title: 'HTML',
                    duration: '2h, 15m',
                    description: 'Web design basics for beginners',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCourseBox({
    required String image,
    required Color color,
    required String title,
    required String duration,
    required String description,
  }) {
    return Container(
      height: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
       
      ),
      child: Column(
        children: [
          Container(
            height: 130,
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Stack(
              children: [
                Center(
                  child: Image.asset(
                    image,
                    height: 300,
                    width: 300,
                  ),
                ),
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 121, 203, 241),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text(
                      '\$50',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(duration, style: const TextStyle(fontSize: 12)),
                          const SizedBox(height: 4),
                          Text(title,
                              style: const TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 4),
                          Text(description,
                              style: const TextStyle(fontSize: 11, color: Colors.grey)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
