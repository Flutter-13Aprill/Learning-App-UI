import 'package:flutter/material.dart';

// --- Screens
import 'package:learning_app_ui/screens/login_screen.dart';
import 'package:learning_app_ui/widgets/custom_rounded_button.dart';
import 'package:learning_app_ui/widgets/onboarding_widgets/first_page_widget.dart';

// -- Widgets
import 'package:learning_app_ui/widgets/onboarding_widgets/page_indicator_widget.dart';
import 'package:learning_app_ui/widgets/onboarding_widgets/second_page_widget.dart';
import 'package:learning_app_ui/widgets/onboarding_widgets/third_page_widget.dart';

/// [OnboardingScreen] represents the onboarding screen shown to new users.
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  /// [pageNumber] Tracks the current page to correctly highlight the page indicator.
  int pageNumber = 0;

  /// [_pageController] A private controller for managing and tracking the PageView.
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    super.dispose();

    // Dispose of the controller to free up memory.
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            style: TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
            onPressed:
                () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                ),
            child: Text('Skip', style: TextStyle(color: Color(0xff78746D))),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: 144),

            SizedBox(
              width: 375,
              height: 400,
              child: PageView(
                controller: _pageController,
                onPageChanged:
                    (value) => setState(() {
                      pageNumber = value;
                    }),
                children: [
                  // --- First page
                  FirstPageWidget(),

                  // -- Second page
                  SecondPageWidget(),

                  // --- Third Page
                  ThirdPageWidget(),
                ],
              ),
            ),

            SizedBox(height: 16),

            PageIndicatorWidget(currentPage: pageNumber),

            SizedBox(height: 120),

            CustomRoundedButton(
              title: pageNumber == 2 ? 'Let\'s Start' : 'Next',
              onPressed: () {
                setState(() {
                  if (pageNumber == 2) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  }
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeIn,
                  );
                  pageNumber += 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
