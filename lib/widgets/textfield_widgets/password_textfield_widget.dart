import 'package:flutter/material.dart';

class PasswordTextfieldWidget extends StatelessWidget {
  const PasswordTextfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          suffixIcon: Image.asset(
            'assets/images/login_images/password_icon.png',
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
