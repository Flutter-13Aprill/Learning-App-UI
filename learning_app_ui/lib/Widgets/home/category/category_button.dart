import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final buttonName;

  const CategoryButton({super.key, this.buttonName});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        width: 58,
        decoration: BoxDecoration(
          color: Color(0xff65AAEA),

          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 3,
            bottom: 3,
            left: 11,
            right: 11,
          ),
          child: Center(
            child: Text(
              "$buttonName",
              style: TextStyle(
                color: Color(0xffF2F2F2),
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
