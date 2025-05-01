import 'package:flutter/material.dart';

// --- Widget
import 'package:learning_app_ui/widgets/home_widgets/category_chip_widget.dart';

class RowCategoryChipsWidget extends StatelessWidget {
  const RowCategoryChipsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Category: ',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),

        CategoryChipWidget(categoryName: '#CSS'),

        CategoryChipWidget(categoryName: '#UX'),

        CategoryChipWidget(categoryName: '#Swift'),

        CategoryChipWidget(categoryName: '#UI'),

      ],
    );
  }
}
