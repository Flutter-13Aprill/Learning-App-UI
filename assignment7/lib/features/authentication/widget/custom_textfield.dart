import 'package:flutter/material.dart';

class CustomTextfield extends StatefulWidget {
  const CustomTextfield({
    super.key,
    required this.hintText,
    required this.controller,
    this.isPassword = false,
  });
  final String hintText;
  final TextEditingController controller;
  final bool isPassword;

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.isPassword ? isVisible : false,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon:
            widget.isPassword
                ? IconButton(
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  icon: Icon(
                    isVisible ? Icons.visibility_off : Icons.visibility,
                  ),
                )
                : null,
      ),
    );
  }
}
