import 'package:assignment7/core/text/app_text.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        children: [
          Text(
            AppText.category,
            style: Theme.of(
              context,
            ).textTheme.bodySmall!.copyWith(color: Color(0xff6D6D78)),
          ),
          Flexible(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: AppText.dataCategory.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3),
                  child: Chip(label: Text(AppText.dataCategory[index])),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
