import 'package:flutter/material.dart';

/// [TopSectionWidget] displays the top section of the home screen, including the user name, notifications, and search bar.
class TopSectionWidget extends StatelessWidget {
  const TopSectionWidget({super.key, required this.userName});

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello,',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.5,
                  ),
                ),

                SizedBox(height: 4),

                Text(
                  userName,
                  style: TextStyle(
                    fontSize: 32,
                    letterSpacing: -1,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),

            Spacer(),
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffBEBAB3), width: 1),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Image.asset(
                'assets/icons/home_icons/notification_icon.png',
              ),
            ),
          ],
        ),

        SizedBox(height: 16),

        TextField(
          decoration: InputDecoration(
            hintText: 'Search Course',
            suffixIcon: Image.asset('assets/icons/home_icons/Search Icon.png'),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ],
    );
  }
}
