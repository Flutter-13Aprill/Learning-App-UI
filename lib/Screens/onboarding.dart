import 'package:apr30/CustomWidgets/onboarding_tab.dart';
import 'package:apr30/CustomWidgets/page_indicator.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> with TickerProviderStateMixin {
  // Declare the PageController and TabController
  // These controllers are used to manage the state of the page view and tabs
  late PageController _pageViewController;
  late TabController _tabController;
  int _currentIndex = 0;

  // This method is called when the widget is first created
  @override
  void initState() {
    _pageViewController = PageController();
    _tabController = TabController(length: 3, vsync: this);
    super.initState();

    // Any initialization code can go here
  }

  // This method is called when the widget is removed from the widget tree
  @override
  void dispose() {
    super.dispose();
    _pageViewController.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _pageViewController,
            onPageChanged: _handlePageViewChanged,
            children: [
              // First page
              OnboardingTab(
                imagePath: "Assets/Images/Onboarding1.png",
                title: "Learn AnyTime\nAnd AnyWhere",
                subtitle:
                    "Quarantine is the perfect time to spend your\nday learning something new, from anywhere!",
              ),

              // Second page
              OnboardingTab(
                imagePath: "Assets/Images/Onboarding2.png",
                title: "Find a course\nfor you",
                subtitle:
                    "Quarantine is the perfect time to spend your\nday learning something new, from anywhere!",
              ),
              // Third page
              OnboardingTab(
                imagePath: "Assets/Images/Onboarding2.png",
                title: "Improve your skills",
                subtitle:
                    "Quarantine is the perfect time to spend your\nday learning something new, from anywhere!",
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.1,
            ),
            child: PageIndicator(
              tabController: _tabController,
              currentPageIndex: _currentIndex,
              onUpdateCurrentPageIndex: (int newIndex) {
                _pageViewController.jumpToPage(newIndex);
                setState(() {
                  _currentIndex = newIndex;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  void _handlePageViewChanged(int currentPageIndex) {
    // This method is called when the page view changes
    // It updates the current index and the tab controller's index
    _tabController.index = currentPageIndex;
    setState(() {
      _currentIndex = currentPageIndex;
    });
  }
}
