import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final String title;
  final String duration;
  final int price;


/*"Displays the details of a specific course. This page includes
   course information such as the title, duration, and price.*/
  const ProductDetail({
    Key? key,
    required this.title,
    required this.duration,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Center(
              child: Image.asset(
                'assets/pic3/homeScreen1.png', 
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),

            
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 121, 203, 241),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '\$50',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            
            Text(
              'About the course',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'You can launch a new career in web development today by learning HTML & CSS. '
              'You don’t need a computer science degree or expensive software. All you need is a computer, '
              'a bit of time, a lot of determination, and a teacher you trust.',
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 20),
            Text('Duration: $duration', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),

          SizedBox(
       width: double.infinity,
       child: ElevatedButton(
       style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 218, 85, 45),
      padding: const EdgeInsets.symmetric(vertical: 16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    onPressed: () {},
    child: const Text(
      'Add to cart',
      style: TextStyle(
        fontSize: 14,
        color: Colors.white,
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
