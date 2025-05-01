import 'package:flutter/material.dart';
import 'package:learning_app/screens/login_screen.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  final pageController = PageController();
  int pageNumber = 0;
  // To make the page indicator
  Widget dotIndicator() {
    return Builder(
      builder: ((context) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < 3; i++)
              Container(
                margin: EdgeInsets.all(5),
                width: i == pageNumber ? 16 : 6,
                height: 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: i == pageNumber ? Colors.blue : Colors.grey,
                ),
              ),
          ],
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // Skip button
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LogInScreen()),
              );
            },
            child: const Text('Skip', style: TextStyle(color: Colors.grey)),
          ),
        ],
      ),

      // PageView to navigate through the onboarding pages
      body: PageView(
        // To know the current page
        onPageChanged: (value) {
          setState(() {
            pageNumber = value;
          });
        },
        controller: pageController,
        children: [
          // Page 0
          Column(
            spacing: 16,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/intro1.png',
                width: MediaQuery.sizeOf(context).width,
                height: (MediaQuery.sizeOf(context).width) / 1.5,
              ),

              Text(
                'Learn anytime\nand anywhere',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              Text(
                'Quarantine is the perfect time to spend your\nday learning something new, from anywhere!',
                style: TextStyle(fontSize: 14, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              dotIndicator(),
              SizedBox(height: 70),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                    MediaQuery.sizeOf(context).width / 1.2,
                    (MediaQuery.sizeOf(context).width) / 7,
                  ),
                  backgroundColor: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {
                  pageController.animateToPage(
                    1,
                    duration: Duration(milliseconds: 700),
                    curve: Curves.easeIn,
                  );
                },
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          // Page 1
          Column(
            spacing: 16,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/intro2.png",
                width: MediaQuery.sizeOf(context).width,
                height: (MediaQuery.sizeOf(context).width) / 1.5,
              ),

              Text(
                'Find a course\nfor you',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              Text(
                'Quarantine is the perfect time to spend your\nday learning something new, from anywhere!',
                style: TextStyle(fontSize: 14, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              dotIndicator(),
              SizedBox(height: 70),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                    MediaQuery.sizeOf(context).width / 1.2,
                    (MediaQuery.sizeOf(context).width) / 7,
                  ),
                  backgroundColor: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {
                  pageController.animateToPage(
                    2,
                    duration: Duration(milliseconds: 700),
                    curve: Curves.easeIn,
                  );
                },
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          // Page 2
          Column(
            spacing: 16,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Image.asset(
                "assets/images/intro3.png",
                width: MediaQuery.sizeOf(context).width,
                height: (MediaQuery.sizeOf(context).width) / 1.5,
              ),

              Text(
                'Improve your skills',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              Text(
                'Quarantine is the perfect time to spend your\nday learning something new, from anywhere!',
                style: TextStyle(fontSize: 14, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              dotIndicator(),
              SizedBox(height: 70),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(
                    MediaQuery.sizeOf(context).width / 1.2,
                    (MediaQuery.sizeOf(context).width) / 7,
                  ),
                  backgroundColor: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LogInScreen()),
                  );
                },
                child: Text(
                  'Let’s Start',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
