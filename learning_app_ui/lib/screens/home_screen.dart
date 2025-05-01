import 'package:flutter/material.dart';
import 'package:learning_app_ui/Widgets/home/card/card_container.dart';
import 'package:learning_app_ui/Widgets/home/category/home_category.dart';
import 'package:learning_app_ui/Widgets/home/home_headers.dart';
import 'package:learning_app_ui/Widgets/home/home_searchbar.dart';

// Define a stateful widget for the home screen
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Adds top and horizontal margin around the content
        margin: EdgeInsets.only(top: 32, left: 16, right: 16),

        // ListView allows vertical scrolling of screen components
        child: ListView(
          children: [
            HomeHeaders(),
            HomeSearchbar(),
            HomeCategory(),
            CardContainer(),
          ],
        ),
      ),
    );
  }
}
