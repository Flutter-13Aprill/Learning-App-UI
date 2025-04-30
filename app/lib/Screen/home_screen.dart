import 'package:app/Screen/product_detail.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String? name; // Optional parameter for the user's name

  const HomeScreen({Key? key, this.name}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color of the screen
      appBar: AppBar(
        title: Text("Hello", style: TextStyle(fontSize: 18)), // App bar with title
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Padding(
                // Padding for the user's name
                padding: const EdgeInsets.only(left: 16, right: 100),
                child: Text(
                  "${widget.name}", // Display the user's name
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold, // Style for the name
                  ),
                ),
              ),
              Container(
                // Notification icon container
                margin: EdgeInsets.only(
                  left: 30,
                  bottom: 15,
                ), // Margin for the icon
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  // Circular border for notification icon
                  border: Border.all(color: Colors.black),
                  shape: BoxShape.circle, // Circle shape
                ),
                child: Icon(Icons.notifications_none), // Notification icon
              ),
            ],
          ),
          Container(
            // Search bar container
            width: 500, // Width of the search bar
            height: 65, // Height of the search bar
            margin: EdgeInsets.only(
              left: 10,
              right: 10,
            ), // Margins for positioning
            decoration: BoxDecoration(),
            child: SearchBar(
              elevation: WidgetStateProperty.all(0), // Set elevation to 0
              hintText: "Search bar", // Placeholder text for search
              backgroundColor: WidgetStateProperty.all(
                Colors.white, // Background color of the search bar
              ),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // Rounded corners
                  side: BorderSide(color: Colors.black26), // Border color
                ),
              ),
              trailing: [Icon(Icons.search)], // Trailing search icon
            ),
          ),
          Row(
            // Categories section
            children: [
              Container(
                // Margin for category label
                margin: EdgeInsets.only(left: 10),
                child: Text("Category: ", style: TextStyle(fontSize: 14)), // Category label
              ),
              // Category buttons
              Container(
                // CSS category button
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: 8,
                ),
                padding: EdgeInsets.all(3), // Padding inside the button
                width: 65, // Width of the button
                height: 30, // Height of the button
                decoration: BoxDecoration(
                  color: Color(0XFF65AAEA), // Background color of the button
                  borderRadius: BorderRadius.circular(24), // Rounded corners
                ),
                child: Text(
                  "#CSS ", // Category title
                  style: TextStyle(color: Colors.white, fontSize: 16), // Text style
                  textAlign: TextAlign.center, // Center text
                ),
              ),
              // UX category button
              Container(
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: 8,
                ),
                padding: EdgeInsets.all(3), // Padding inside the button
                width: 58, // Width of the button
                height: 30, // Height of the button
                decoration: BoxDecoration(
                  color: Color(0XFF65AAEA), // Background color of the button
                  borderRadius: BorderRadius.circular(24), // Rounded corners
                ),
                child: Text(
                  "#UX ", // Category title
                  style: TextStyle(color: Colors.white, fontSize: 16), // Text style
                  textAlign: TextAlign.center, // Center text
                ),
              ),
              // Swift category button
              Container(
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: 8,
                ),
                padding: EdgeInsets.all(3), // Padding inside the button
                width: 65, // Width of the button
                height: 30, // Height of the button
                decoration: BoxDecoration(
                  color: Color(0XFF65AAEA), // Background color of the button
                  borderRadius: BorderRadius.circular(24), // Rounded corners
                ),
                child: Text(
                  "#Swift", // Category title
                  style: TextStyle(color: Colors.white, fontSize: 16), // Text style
                  textAlign: TextAlign.center, // Center text
                ),
              ),
              // UI category button
              Container(
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: 8,
                ),
                padding: EdgeInsets.all(3), // Padding inside the button
                width: 58, // Width of the button
                height: 30, // Height of the button
                decoration: BoxDecoration(
                  color: Color(0XFF65AAEA), // Background color of the button
                  borderRadius: BorderRadius.circular(24), // Rounded corners
                ),
                child: Text(
                  "#UI", // Category title
                  style: TextStyle(color: Colors.white, fontSize: 16), // Text style
                  textAlign: TextAlign.center, // Center text
                ),
              ), // End of category buttons
            ],
          ),
          // First course card
          Container(
            margin: EdgeInsets.only(left: 8, right: 8), // Margin for the card
            width: 550, // Width of the card
            height: 340, // Height of the card
            child: Card(
              color: Color(0XFFF8F2EE), // Background color of the card
              shape: RoundedRectangleBorder(
                side: BorderSide(color: const Color.fromARGB(255, 85, 84, 84)), // Card border color
                borderRadius: BorderRadius.circular(8.0), // Rounded corners
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      // Navigate to product detail screen on tap
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ProductDetail(); // Navigate to ProductDetail screen
                          },
                        ),
                      );
                    },
                    child: Image.asset(
                      "assest/images/7.png", // Course image
                      width: 400,
                      height: 200,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 300, top: 20), // Margin for price container
                        alignment: Alignment(0, .7),
                        decoration: BoxDecoration(
                          color: Color(0XFF65AAEA), // Background color of price label
                          borderRadius: BorderRadius.circular(24), // Rounded corners
                        ),
                        width: 70, // Width of the price label
                        height: 30, // Height of the price label
                        child: Text(
                          textAlign: TextAlign.center,
                          "\$50", // Display course price
                          style: TextStyle(color: Colors.white, fontSize: 20), // Text style for price
                        ),
                      ),
                    ],
                  ),
                  // Course details section
                  Container(
                    padding: EdgeInsets.only(left: 8),
                    margin: EdgeInsets.all(0),
                    width: 400, // Width of the details container
                    height: 80, // Height of the details container
                    decoration: BoxDecoration(color: Colors.white), // Background color for details
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "3 h 30 min ", // Course duration
                          style: TextStyle(color: Color(0XFF5BA092)), // Text style for duration
                        ),
                        Text(
                          "UI", // Course title
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold, // Bold style for title
                          ),
                        ),
                        Text("Advanced mobile interface design"), // Course description
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ), // End of first course card
          // Second course card
          Container(
            margin: EdgeInsets.only(left: 8, right: 8, bottom: 0), // Margin for the card
            width: 550, // Width of the card
            height: 350, // Height of the card
            child: Card(
              color: Color(0XFFE6EDF4), // Background color of the card
              shape: RoundedRectangleBorder(
                side: BorderSide(color: const Color.fromARGB(255, 85, 84, 84)), // Card border color
                borderRadius: BorderRadius.circular(8.0), // Rounded corners
              ),
              child: Column(
                children: [
                  InkWell(
                    child: Image.asset(
                      "assest/images/8.png", // Course image
                      width: 400,
                      height: 200,
                    ),
                    onTap: () {
                      // Navigate to product detail screen on tap
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ProductDetail(); // Navigate to ProductDetail screen
                          },
                        ),
                      );
                    },
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 300, top: 20), // Margin for price container
                        alignment: Alignment(0, .7),
                        decoration: BoxDecoration(
                          color: Color(0XFF65AAEA), // Background color of price label
                          borderRadius: BorderRadius.circular(24), // Rounded corners
                        ),
                        width: 70, // Width of the price label
                        height: 30, // Height of the price label
                        child: Text(
                          textAlign: TextAlign.center,
                          " \$50", // Display course price
                          style: TextStyle(color: Colors.white, fontSize: 20), // Text style for price
                        ),
                      ),
                    ],
                  ),
                  // Course details section
                  Container(
                    padding: EdgeInsets.only(left: 8),
                    margin: EdgeInsets.all(0),
                    width: 400, // Width of the details container
                    height: 91, // Height of the details container
                    decoration: BoxDecoration(color: Colors.white), // Background color for details
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "3 h 30 min ", // Course duration
                          style: TextStyle(color: Color(0XFF5BA092)), // Text style for duration
                        ),
                        Text(
                          "HTML", // Course title
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold, // Bold style for title
                          ),
                        ),
                        Text("Advanced mobile interface design"), // Course description
                      ],
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