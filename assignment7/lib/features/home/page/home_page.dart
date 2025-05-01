import 'package:assignment7/core/text/app_text.dart';
import 'package:assignment7/core/theme/app_palette.dart';
import 'package:assignment7/features/home/widget/category_widget.dart';
import 'package:assignment7/features/home/widget/custom_card.dart';
import 'package:assignment7/features/home/widget/custom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppText.hello,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Juana Antonieta",
                        style: Theme.of(
                          context,
                        ).textTheme.titleLarge!.copyWith(fontSize: 32),
                      ),
                    ],
                  ),
                  Container(
                    height: 48.h,
                    width: 48.w,
                    decoration: BoxDecoration(
                      color: AppPalette.whiteColor,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppPalette.borderColor,
                        width: 1,
                      ),
                    ),
                    child: Icon(
                      Icons.notifications_outlined,
                      color: AppPalette.iconBlack,
                      size: 28,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              CustomSearchBar(),
              CategoryWidget(),
              Flexible(child: CustomCard()),
            ],
          ),
        ),
      ),
    );
  }
}
