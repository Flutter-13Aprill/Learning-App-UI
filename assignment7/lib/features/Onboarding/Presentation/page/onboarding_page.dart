import 'package:assignment7/core/function/navigation.dart';
import 'package:assignment7/core/text/app_text.dart';
import 'package:assignment7/core/widgets/custom_button.dart';
import 'package:assignment7/core/widgets/custom_text_button.dart';
import 'package:assignment7/features/Onboarding/Presentation/widget/custom_smooth_indicator.dart';
import 'package:assignment7/features/Onboarding/data/onboarding_data.dart';
import 'package:assignment7/features/authentication/page/singup_page.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            itemCount: onboardingData.length,
            itemBuilder: (BuildContext context, int index) {
              return SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                  child: Column(
                    children: [
                      //skip button
                      Align(
                        alignment: Alignment.topRight,
                        child: CustomTextButton(
                          onPressed: () {
                            customReplacementNavigate(context, SignupPage());
                          },
                          text: AppText.skip,
                        ),
                      ),
                      SizedBox(height: 140),
                      Image.asset(
                        onboardingData[index].image,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 16),
                      Text(
                        onboardingData[index].title,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(height: 8),
                      Text(
                        onboardingData[index].subTitle,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      SizedBox(height: 50),
                      CustomSmoothIndicator(controller: controller),
                      const Spacer(),
                      CustomButton(
                        text:
                            currentPage == onboardingData.length - 1
                                ? AppText.start
                                : AppText.next,
                        onPressed: () {
                          if (index == onboardingData.length - 1) {
                            customReplacementNavigate(context, SignupPage());
                          } else {
                            controller.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            );
                          }
                        },
                      ),
                      // SizedBox(height: 16),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}