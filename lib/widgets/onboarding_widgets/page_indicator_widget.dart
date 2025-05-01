import 'package:flutter/material.dart';

/// [PageIndicatorWidget] displays the three dots below the PageView to indicate the current page.
class PageIndicatorWidget extends StatelessWidget {

  const PageIndicatorWidget({super.key, required this.currentPage});
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) => Padding(
        padding: const EdgeInsets.all(12.0),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeIn,
          width: index == currentPage ? 16 : 5,
          height: 6,
          decoration: BoxDecoration(
            color: index == currentPage ? Color(0xff65AAEA) : Color(0xffD5D4D4),
            borderRadius: BorderRadius.circular(5)
          ),
        ),
      ) )
    );
  }
}