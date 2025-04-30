import 'package:apr30/Helpers/auth_methods.dart';
import 'package:flutter/material.dart';

class EmailField extends StatefulWidget {
  const EmailField({super.key, required this.emailController});
  final TextEditingController emailController;

  @override
  State<EmailField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Card(
        elevation: 5,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Enter your email address please';
            } else if (!isValidEmail(widget.emailController.text.trim())) {
              return 'Enter a valid email address';
            }
            return null;
          },
          controller: widget.emailController,
          decoration: InputDecoration(
            fillColor: const Color.fromARGB(255, 236, 236, 236),
            filled: true,
            hintText: "Email Address",
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
