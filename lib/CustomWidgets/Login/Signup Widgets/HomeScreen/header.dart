import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    // Build a header with a greeting and a notification icon
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Hello,', style: TextStyle(fontSize: 16)),
            SizedBox(height: 4),
            Text(
              'Juana Antonieta',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_outlined, size: 28),
          ),
        ),
      ],
    );
  }
}
