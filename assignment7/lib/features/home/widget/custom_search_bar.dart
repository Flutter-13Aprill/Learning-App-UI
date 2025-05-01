import 'package:assignment7/core/text/app_text.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      hintText: AppText.searchHint,
      trailing: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
    );
  }
}
