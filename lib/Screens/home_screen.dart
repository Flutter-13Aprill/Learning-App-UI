import 'package:apr30/CustomWidgets/HomeScreen/category_chips.dart';
import 'package:apr30/CustomWidgets/HomeScreen/course_card.dart';
import 'package:apr30/CustomWidgets/HomeScreen/custom_search_bar.dart';
import 'package:apr30/CustomWidgets/HomeScreen/header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Build the home screen with a header, search bar, category chips, and course cards
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            children: [
              Header(),
              const SizedBox(height: 24),
              CustomSearchBar(),
              const SizedBox(height: 16),
              CategoryChips(),
              const SizedBox(height: 24),
              CourseCard(
                imagePath: 'Assets/Images/Course1.png',
                title: 'UI',
                subtitle: 'Advanced mobile interface design',
                price: '\$50',
                color: Colors.orange[50]!,
              ),
              const SizedBox(height: 16),
              CourseCard(
                imagePath: 'Assets/Images/Course2.png',
                title: 'HTML',
                subtitle: 'Modern web markup and semantics',
                price: '\$50',
                color: Colors.blue[50]!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
