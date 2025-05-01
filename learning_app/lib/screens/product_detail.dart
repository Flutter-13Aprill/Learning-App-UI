import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Show the course name and back button
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'HTML',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 8),

            Container(
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios),
                iconSize: 25,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            spacing: 16,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/product_detail.png",
                  width: MediaQuery.sizeOf(context).width,
                  height: (MediaQuery.sizeOf(context).width) / 1.5,
                ),
              ),
              // Course details
              Text(
                'About the course',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              Text(
                "You can launch a new career in web develop-ment today by learning HTML & CSS. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust.",
                style: TextStyle(fontSize: 14),
              ),
              Text(
                'Duration',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              Text('1 h 30 min', style: TextStyle(fontSize: 14)),
              SizedBox(height: 60),
              // Add to cart button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                    MediaQuery.sizeOf(context).width,
                    (MediaQuery.sizeOf(context).width) / 7,
                  ),
                  backgroundColor: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Add to cart',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
