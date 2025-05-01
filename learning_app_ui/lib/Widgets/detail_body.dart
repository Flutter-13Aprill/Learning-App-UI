import 'package:flutter/material.dart';

/// A widget representing the body of the detail screen.
class DetailBody extends StatelessWidget {
  const DetailBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        children: [
          // Image of the course
          Image.asset("images/bodyImg.png", height: 300),
          // Price container at the top right corner
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(right: 16, top: 32),
                width: 63,
                height: 30,
                decoration: BoxDecoration(
                  color: Color(0xff65AAEA),

                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Center(
                  child: Text(
                    "\$ 50",
                    style: TextStyle(
                      color: Color(0xffF2F2F2),
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // "About the course" section
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About the course ",
                  style: TextStyle(
                    color: Color(0xff3C3A36),
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                ),
                Wrap(
                  children: [
                    Text(
                      "You can launch a new career in web develop- ment today by learning HTML & CSS. You don't need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust.",
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 16, right: 16, top: 24),
            child: Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Duration",
                  style: TextStyle(
                    color: Color(0xff3C3A36),
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                ),
                Wrap(children: [Text("1 h 30 min")]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
