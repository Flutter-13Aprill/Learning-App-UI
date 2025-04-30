import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.nextPage, required this.text});
  final Widget nextPage;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 311,
      height: 56,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => nextPage),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(227, 86, 42, 1),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child:  Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
