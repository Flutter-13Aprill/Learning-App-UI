import 'package:assignment7/core/text/app_text.dart';
import 'package:assignment7/core/theme/app_palette.dart';
import 'package:assignment7/core/widgets/custom_button.dart';
import 'package:assignment7/core/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HtmlCourse extends StatelessWidget {
  const HtmlCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTML"),
        leading: Stack(
          children: [
            Positioned(
              left: 4,
              child: Container(
                padding: EdgeInsets.all(4),
                height: 48.h,
                width: 48.w,
                decoration: BoxDecoration(
                  color: AppPalette.whiteColor,
                  shape: BoxShape.circle,
                  border: Border.all(color: AppPalette.borderColor, width: 1),
                ),
                child: IconButton(
                  color: AppPalette.iconBlack,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset("asset/image/product.png"),
            Align(
              alignment: Alignment.centerRight,
              child: Chip(label: Text("\$ 50", textAlign: TextAlign.start)),
            ),

            CustomListTile(title: AppText.course, subtitle: AppText.courseDes),
            CustomListTile(title: AppText.duration, subtitle: AppText.time),
            SizedBox(height: 80),
            CustomButton(text: AppText.cart, onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
