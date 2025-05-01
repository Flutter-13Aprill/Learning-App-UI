import 'package:flutter/material.dart';

class ProdectDetailScreen extends StatelessWidget {
  const ProdectDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top Navigation Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Back Button
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black26),
                          ),
                          child: const Icon(Icons.arrow_back),
                        ),
                      ),
                      const Text(
                        'HTML',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 40),
                    ],
                  ),
                  const SizedBox(height: 80),

                  // Image and price
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 240,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.asset(
                            'assets/images/image_9.png',
                            fit: BoxFit.contain,
                          ),
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
                          child: const Text(
                            '\$50',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 100),

                  // About the course
                  const Text(
                    'About the course',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'You can launch a new career in web develop-ment today by learning HTML & CSS. You don'
                    't need a computer science degree or expensive software. All\n you need is a computer, a bit of time, a lot of \ndetermination, and a teacher you trust.',
                    style: TextStyle(fontSize: 14, height: 1.6),
                  ),
                  const SizedBox(height: 24),

                  // Duration
                  const Text(
                    'Duration',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    '1 h 30 min',
                    style: TextStyle(fontSize: 14),
                  ),

                  const SizedBox(height: 184),
                ],
              ),
            ),

            // Add to Cart Button
            Positioned(
              bottom: 24,
              left: 33,
              right: 33,
              child: SizedBox(
                width: 309,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE3562A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 16),
                  ),
                  child: const Text(
                    'Add to cart',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
