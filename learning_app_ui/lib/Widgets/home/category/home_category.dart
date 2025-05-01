import 'package:flutter/material.dart';
import 'package:learning_app_ui/Widgets/home/category/category_button.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Center(
            child: Text(
              "Category:",
              style: TextStyle(
                color: Color(0xff3C3A36),
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ),
          CategoryButton(buttonName: "#CSS"),
          CategoryButton(buttonName: "#UX"),
          CategoryButton(buttonName: "#Swift"),
          CategoryButton(buttonName: "#UI"),
        ],
      ),
    );
  }
}
