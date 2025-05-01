import 'package:flutter/material.dart';
class Product_Detail_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // Custom AppBar with top padding and centered title
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
            child: Row(
              children: [
                // Back button (smaller size)
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 1),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 16),
                    iconSize: 16,
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.pop(context); // Pop back to the previous screen
                    },
                  ),
                ),
                
                // Title in the center of the app bar
                Expanded(
                  child: Center(
                    child: Text(
                      "HTML",  // Course title
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),

                // Empty space to balance the row and align the title properly
                SizedBox(width: 36),
              ],
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image section (product image)
              SizedBox(height: 10), // Slight gap below AppBar
              Center(
                child: Image.asset(
                  'assets/HTML-Product.png',  // Replace with actual image asset
                  height: 360,  // Image height
                ),
              ),

              // Price tag section
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.blue[300],  // Blue background color
                    borderRadius: BorderRadius.circular(20),  // Rounded corners
                  ),
                  child: Text("\$ 50", style: TextStyle(color: Colors.white)),  // Price text
                ),
              ),

              SizedBox(height: 20),

              // Course details (About section)
              Text(
                "About the course",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(height: 10),
              Text(
                "You can launch a new career in web development today by learning HTML & CSS. "
                "You don’t need a computer science degree or expensive software. "
                "All you need is a computer, a bit of time, a lot of determination, and a teacher you trust.",
                style: TextStyle(fontSize: 14),
              ),

              SizedBox(height: 20),

              // Duration section
              Text(
                "Duration",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 5),
              Text("1 h 30 min"),

              SizedBox(height: 35),

              // Add to cart button
              SizedBox(
                width: double.infinity,  // Button spans the width of the screen
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[800],  // Orange background color
                    padding: EdgeInsets.symmetric(vertical: 16),  // Button padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),  // Rounded corners for the button
                    ),
                  ),
                  onPressed: () {},  // Action when the button is pressed
                  child: Text(
                    "Add to cart",  // Button text
                    style: TextStyle(fontSize: 16, color: Colors.white),  // Text styling
                  ),
                ),
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
