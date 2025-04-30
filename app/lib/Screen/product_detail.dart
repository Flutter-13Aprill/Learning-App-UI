import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color of the screen

      body: Column(
        children: [
          SizedBox(height: 65),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 16,
                  right: 99,
                ), // Margin for the back button
                width: 41, // Width of the back button
                height: 41, // Height of the back button
                decoration: BoxDecoration(
                  shape: BoxShape.circle, // Circular shape for the button
                  border: Border.all(color: Colors.black), // Border color
                ),
                child: InkWell(
                  child: Icon(Icons.arrow_back_ios),
                  onTap: () {
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }
                  },
                ), // Back arrow icon
              ),
              Text(
                "HTML", // Course title
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ), // Style for course title
                textAlign: TextAlign.center, // Center text alignment
              ),
            ],
          ),
          Container(
            width: 400, // Width of the image container
            height: 300, // Height of the image container
            child: Image.asset(
              "assest/images/9.png",
              fit: BoxFit.contain,
            ), // Course image
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 300,
                  top: 20,
                ), // Margin for price label
                alignment: Alignment(0, .7),
                decoration: BoxDecoration(
                  color: Colors.blue, // Background color for price label
                  borderRadius: BorderRadius.circular(24), // Rounded corners
                ),
                width: 70, // Width of the price label
                height: 30, // Height of the price label
                child: Text(
                  textAlign: TextAlign.center,
                  "\$50", // Display course price
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ), // Style for price text
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the start
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  textAlign: TextAlign.start,
                  "About the course", // Section title
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ), // Style for section title
                ),
              ),
              SizedBox(height: 5), // Space between title and description
              Container(
                margin: EdgeInsets.only(left: 10),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black), // Default text style
                    children: [
                      TextSpan(
                        
                        text:
                            "You can launch a new career in web development today by learning HTML & CSS.", // First part of the text
                      ),
                      
                      TextSpan(
                        text:
                            " You don't need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust.", // Remaining text
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10,top: 15),
                child: Text(
                  textAlign: TextAlign.start,
                  "Duration", // Duration section title
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ), // Style for duration title
                ),
              ),
              SizedBox(height: 10), // Space before displaying the duration
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text("1 h 30 min", style: TextStyle(fontSize: 15)),
              ), // Display course duration
            ],
          ),
          SizedBox(height: 20), // Space before the button
          MaterialButton(
            onPressed: () {
              // Action for adding to cart (currently empty)
            },
            child: Container(
              margin: EdgeInsets.only(
                bottom: 10,
                top: 50,
              ), // Margin for the button
              width: 700, // Width of the button
              height: 70, // Height of the button
              padding: EdgeInsets.all(18), // Padding inside the button
              decoration: BoxDecoration(
                color: Color(0xFFE3562A), // Button background color
                borderRadius: BorderRadius.circular(18), // Rounded corners
              ),
              child: Text(
                "Add to cart", // Button text
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ), // Style for button text
                textAlign: TextAlign.center, // Center text alignment
              ),
            ),
          ),
        ],
      ),
    );
  }
}
