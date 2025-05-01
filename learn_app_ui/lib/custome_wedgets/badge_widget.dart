// import material
import 'package:flutter/material.dart';
// class badgewidget
class BadgeWidget extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  const BadgeWidget({super.key, required this.text, this.onPressed,});

  @override
  Widget build(BuildContext context) {
    // Gesture that contain the content
    return GestureDetector(
      onTap:onPressed ,
      child: Container(
        margin: const EdgeInsets.only(left: 20.0),
        padding: const EdgeInsets.symmetric(
            horizontal: 15.0, vertical: 5.0),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(20.0),
        ),
        //name of badge
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(
            
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
