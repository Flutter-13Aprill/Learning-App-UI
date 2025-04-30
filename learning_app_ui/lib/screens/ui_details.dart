import 'package:flutter/material.dart';
import 'package:learning_app_ui/screens/home_screen.dart';

class UIDetailsScreen extends StatelessWidget {
  const UIDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        title: Text(
          "UI",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                ),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.keyboard_arrow_left_rounded),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/Course1Image.png",
                  height: 257,
                  width: 375,
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff65AAEA),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 24,
                      ),
                      child: Text(
                        "\$ 50",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 25),
                Text(
                  "About the course",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 5),

                Text(
                  "You can start your journey in UI design today without prior experience. You don’t need to be an artist or have a design degree. All you need is curiosity, a creative spark, and a mentor who can guide you — everything else, you’ll learn along the way.",
                ),
                SizedBox(height: 15),

                Text(
                  "Duration",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 5),

                Text("3 h 30 min"),
                SizedBox(height: 45),

                Center(
                  child: InkWell(
                    onTap:
                        () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UIDetailsScreen(),
                          ),
                        ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Container(
                        height: 60,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Color(0xffE3562A),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Add to cart",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
