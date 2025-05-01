import 'package:flutter/material.dart';

class HomeHeaders extends StatelessWidget {
  const HomeHeaders({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                "Hello,",
                style: TextStyle(
                  color: Color(0xff3C3A36),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
              Text(
                "Juana Antonieta",
                style: TextStyle(
                  color: Color(0xff333333),
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: SizedBox(
              height: 48,
              width: 48,
              child: Image.asset("images/notification.png"),
            ),
          ),
        ],
      ),
    );
  }
}
