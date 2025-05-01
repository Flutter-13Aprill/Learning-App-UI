import 'package:flutter/material.dart';
import 'package:learning_app_ui/screens/detail_screen.dart';

class HomeCard extends StatelessWidget {
  final imgColor;
  final cardImg;
  final cardTime;
  final title;
  final price;
  final description;

  const HomeCard({
    super.key,
    this.cardImg,
    this.cardTime,
    this.title,
    this.price,
    this.description,
    this.imgColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Future.delayed(Duration(seconds: 2), () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailScreen()),
          );
        });
      },

      child: SizedBox(
        width: double.infinity,
        child: Card(
          child: Column(
            spacing: 4,
            children: [
              Stack(
                children: [
                  Container(
                    color: Color(imgColor)!,
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),

                      child: Image.asset(
                        height: 297,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        "$cardImg",
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    right: 8,
                    child: Container(
                      width: 63,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Color(0xff65AAEA),

                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Center(
                        child: Text(
                          "\$ $price",
                          style: TextStyle(
                            color: Color(0xffF2F2F2),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 16, left: 16, top: 16),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,

                      child: Text(
                        "$cardTime ",
                        style: TextStyle(
                          color: Color(0xff5BA092),
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,

                      child: Text(
                        "$title",
                        style: TextStyle(
                          color: Color(0xff3C3A36),
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 16, bottom: 8),

                child: Text(
                  "$description",
                  style: TextStyle(
                    color: Color(0xff3C3A36),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
