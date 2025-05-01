import 'package:flutter/material.dart';
import 'package:learning_app_ui/Widgets/detail_body.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with centered title
      appBar: AppBar(
        title: Center(
          child: Text(
            "HTML",
            style: TextStyle(
              color: Color(0xff333333),
              fontWeight: FontWeight.w500,
              fontSize: 24,
            ),
          ),
        ),
      ),

      // Body of the screen using ListView for scrollable content
      body: ListView(
        children: [
          // Custom widget showing the content details
          DetailBody(),

          // TextButton styled as a call-to-action button
          TextButton(
            onPressed: () {},
            child: Container(
              // Adds space above the button
              margin: EdgeInsets.only(top: 88),
              decoration: BoxDecoration(
                color: Color(0xffE3562A),
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              height: 56,
              width: double.infinity,
              child: Center(
                // Button label
                child: Text(
                  "Add to cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
