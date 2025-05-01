//import matrial
import 'package:flutter/material.dart';
//search input wedget
class SearchInput extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const SearchInput({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    //the field of text
    return TextField(
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: onPressed,
          //search icon
          child: const Icon(
            Icons.search,
            size: 30.0,
          ),
        ),
        //placeholder
        hintText: text,
        border: OutlineInputBorder(
          borderSide: const BorderSide( width: 2),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
