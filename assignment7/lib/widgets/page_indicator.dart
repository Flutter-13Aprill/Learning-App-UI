import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({Key?key,this.currentValue = 0});

final int currentValue;
//in this widget I identified the Pageindicatior
  @override
  Widget build(BuildContext context) {
    return Row(
      // in this row it will be add 3 dots and be handled currentValue will tell the widget in which page the user in
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: AnimatedContainer(
                        curve: Curves.easeIn,
                        duration: Duration(microseconds: 500),
                        //if the user in the current page the PageIndicator would be the bigger width 
                        width: index == currentValue ? 20 : 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                );
  }
}