import 'package:flutter/material.dart';

class HomeSearchbar extends StatelessWidget {
  const HomeSearchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      child: TextField(
        decoration: InputDecoration(
          labelText: "Search",

          suffixIcon: Icon(Icons.search),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
      ),
    );
  }
}
