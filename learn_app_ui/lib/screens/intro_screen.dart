// Import packages & screens & classes
import 'package:learn_app_ui/classes/intro_page_class.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:learn_app_ui/screens/login_screen.dart';

// Main StatefulWidget
class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}
class _IntroScreenState extends State<IntroScreen> {
  // PageController
  final PageController _controller = PageController();
  int lastPageIndex = 3;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            
            PageView(
              controller: _controller,
              children: [
                // First intro page
                IntroPage(
                  image: "assets/images/intro-1.png",
                  title: "Learn anytime and anywhere",
                  body:
                      "Quarantine is the perfect time to spend your day learning something new, from anywhere!",
                  onPressed: () {
                    // next page button 
                    _controller.animateToPage(
                      1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  skip: () {
                    // Skip to the last page
                    _controller.jumpToPage(lastPageIndex - 1);
                  },
                ),
                // Second intro page
                IntroPage(
                  image: "assets/images/intro-2.png",
                  title: "Find a course for you",
                  body:
                      "Quarantine is the perfect time to spend your day learning something new, from anywhere!",
                  onPressed: () {
                    _controller.animateToPage(
                      2,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                    );
                  },
                  skip: () {
                    _controller.jumpToPage(lastPageIndex - 1);
                  },
                ),
                // Third intro page
                IntroPage(
                  image: "assets/images/intro-3.png",
                  title: "Improve your skills",
                  body:
                      "Quarantine is the perfect time to spend your day learning something new, from anywhere!",
                  onPressed: () {
                    
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  isLast: true, 
                ),
              ],
            ),
            // SmoothPageIndicator at the bottom
            Positioned(
              bottom: 150,
              child: SmoothPageIndicator(
                controller: _controller, 
                count: lastPageIndex, 
                onDotClicked: (index) {
                  
                  _controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  );
                },
                effect: ExpandingDotsEffect(
                  spacing: 8,
                  dotHeight: 10,
                  dotWidth: 10,
                  activeDotColor: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
