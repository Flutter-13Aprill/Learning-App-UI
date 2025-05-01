import 'package:flutter/material.dart';
import 'package:learning_app_ui/Widgets/home/card/home_card.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        spacing: 4,
        children: [
          HomeCard(
            imgColor: 0xffF8F2EE,
            cardImg: "images/card1.png",
            cardTime: "3 h 30 min ",
            title: "UI",
            price: "50",
            description: "Advanced mobile interface design",
          ),
          HomeCard(
            imgColor: 0xffE6EDF4,
            cardImg: "images/card1.png",
            cardTime: "3 h 30 min ",
            title: "HTML",
            price: "50",
            description: "Advanced mobile interface design",
          ),
        ],
      ),
    );
  }
}
