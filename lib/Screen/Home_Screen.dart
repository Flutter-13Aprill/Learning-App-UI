import 'package:flutter/material.dart';
import 'package:learning_app_ui/Screen/Product_Detail_Screen.dart';
class Home_Screen extends StatelessWidget {
  // List of course categories
  final List<String> categories = ['#CSS', '#UX', '#Swift', '#UI'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header section with greeting and notification icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hello,', style: TextStyle(fontSize: 18)),
                        Text(
                          'Juana Antonieta',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    // Notification icon with border
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Icon(Icons.notifications_none, color: Colors.black),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                // Search bar with icon
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 12),
                            hintText: 'Search course',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Icon(Icons.search, color: Colors.grey),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),

                // Course category chips
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Category:',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: categories
                            .map(
                              (cat) => Container(
                                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                                decoration: BoxDecoration(
                                  color: Colors.blue[300],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(cat, style: TextStyle(color: Colors.white)),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                // First course card (UI)
                GestureDetector(
                  onTap: () {}, // You can add navigation logic here
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Course image with price tag
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                              child: Image.asset(
                                'assets/Home-UI.png',
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              right: 10,
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                                decoration: BoxDecoration(
                                  color: Colors.blue[300],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text('\$ 50', style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                        // Course description
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("3 h 30 min", style: TextStyle(color: Colors.green)),
                              SizedBox(height: 5),
                              Text(
                                "UI",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text("Advanced mobile interface design"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20),

                // Second course card (HTML)
                GestureDetector(
                  onTap: () {
                     Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Product_Detail_Screen()),
                  );
                  }, // You can add navigation logic here
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Course image with price tag
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                              child: Image.asset(
                                'assets/Home-HTML.png',
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: 10,
                              right: 10,
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                                decoration: BoxDecoration(
                                  color: Colors.blue[300],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text('\$ 30', style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                        // Course description
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("2 h 15 min", style: TextStyle(color: Colors.green)),
                              SizedBox(height: 5),
                              Text(
                                "HTML",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text("Learn to build modern websites"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
