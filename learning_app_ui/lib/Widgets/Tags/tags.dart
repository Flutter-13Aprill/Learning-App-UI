import 'package:flutter/material.dart';

class Tags extends StatelessWidget {
  const Tags({super.key, required this.tagName});
  final String tagName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 24,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 101, 170, 234)),
      child:  Center(
          child: Text("#$tagName",
              style:
                  const TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
    );
  }
}
