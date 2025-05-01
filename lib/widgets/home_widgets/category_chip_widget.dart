import 'package:flutter/material.dart';

/// [CategoryChipWidget] is a reusable widget used to display a category.
class CategoryChipWidget extends StatelessWidget {
  const CategoryChipWidget({super.key, required this.categoryName});

  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 60,
      height: 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xff65AAEA),
      ),
      child: Text(
        categoryName,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0xffF2F2F2),
        ),
      ),
    );
  }
}
