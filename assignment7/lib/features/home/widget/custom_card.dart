import 'package:assignment7/core/function/navigation.dart';
import 'package:assignment7/core/theme/app_palette.dart';
import 'package:assignment7/features/course%20detail/page/html_course.dart';
import 'package:assignment7/features/home/data/card_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
      ),
      itemCount: cardData.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            customPush(context, HtmlCourse());
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Card(
              child: Stack(
                children: [
                  Container(
                    width: 343.w,
                    height: 194.h,
                    decoration: BoxDecoration(
                      color: index == 1 ? Color(0xffE6EDF4) : Color(0xffF8F2EE),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10),
                      ),
                    ),

                    child: Image.asset(
                      cardData[index].image,
                      fit: BoxFit.contain,
                    ),
                  ),

                  Positioned(
                    left: 290,
                    top: 170,
                    child: Chip(label: Text(cardData[index].price)),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cardData[index].time,
                          style: TextStyle(
                            color: Color(0xff5BA092),
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          cardData[index].course,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        SizedBox(height: 2.h),
                        Text(
                          cardData[index].description,
                          style: Theme.of(context).textTheme.bodySmall!
                              .copyWith(color: AppPalette.textColor1),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
