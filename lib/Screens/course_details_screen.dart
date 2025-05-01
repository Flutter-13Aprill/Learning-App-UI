import 'package:flutter/material.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Top bar
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              // Top bar with back button
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.25),
                  Text(
                    'HTML',
                    style: theme.textTheme.headlineLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // Main image with price tag
            Expanded(
              child: Stack(
                children: [
                  Center(
                    child: Image.asset(
                      'Assets/Images/CourseDetails.png',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 32,
                    bottom: 8,
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
                        "50\$",
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Course details
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 16.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About the course',
                    style: theme.textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'You can launch a new career in web development today by learning HTML & CSS. You don\'t need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust.',
                    style: theme.textTheme.bodyMedium!,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Duration',
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text('1 h 30 min', style: theme.textTheme.bodyMedium!),
                ],
              ),
            ),
          ],
        ),
      ),
      // Bottom button
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
        child: SizedBox(
          height: 48,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(227, 86, 42, 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              'Add to cart',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
