import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final iconName;
  const LoginButton({super.key, this.iconName});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff65AAEA),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        height: 40,
        width: 40,
        child: Image.asset(iconName, height: 24, width: 24),
      ),
    );
  }
}
