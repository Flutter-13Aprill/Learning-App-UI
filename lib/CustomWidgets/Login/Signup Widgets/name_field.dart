import 'package:flutter/material.dart';

class NameField extends StatefulWidget {
  const NameField({super.key, required this.nameController});
  final TextEditingController nameController;
  @override
  State<NameField> createState() => _NameFieldState();
}

class _NameFieldState extends State<NameField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 60,
      child: Card(
        elevation: 5,
        child: TextField(
          controller: widget.nameController,
          decoration: InputDecoration(
            fillColor: const Color.fromARGB(255, 236, 236, 236),
            filled: true,
            hintText: "Full Name",
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
