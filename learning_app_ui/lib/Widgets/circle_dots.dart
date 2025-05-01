import 'package:flutter/material.dart';

// Widget to display three circular dots as page indicators
class CircleDots extends StatelessWidget {
  final bool oneActive;
  final bool twoActive;
  final bool threeActive;

  const CircleDots({
    super.key,
    this.oneActive = true,
    this.twoActive = false,
    this.threeActive = false,
  });

  @override
  Widget build(BuildContext context) {
    /// The active dot is colored blue; inactive ones are grey.

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 3,
      children: [
        Container(
          decoration: BoxDecoration(
            color: oneActive ? Color(0xff65AAEA) : Colors.grey,
            shape: BoxShape.circle,
          ),
          width: 10,
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: twoActive ? Color(0xff65AAEA) : Colors.grey,
            shape: BoxShape.circle,
          ),
          width: 10,
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: threeActive ? Color(0xff65AAEA) : Colors.grey,
            shape: BoxShape.circle,
          ),
          width: 10,
          height: 10,
        ),
      ],
    );
  }
}
