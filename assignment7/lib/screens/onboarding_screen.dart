import 'package:assignment7/screens/login_screen.dart';
import 'package:assignment7/widgets/page_indicator.dart';
import 'package:flutter/material.dart';
//here the pages defiened for the onboarding screen so it can show it as slides
List<Image> slideImage = [
  Image.asset('assets/images/slide1.png'),
  Image.asset('assets/images/slide2.png'),
  Image.asset('assets/images/slide3.png'),
];

//here is the controller for the pageview so it can change between pages
final controller = PageController();

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ElevatedButton(
            onPressed: () {
              //a skip button to skip all the pages
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text('Skip'),
          ),
        ],
      ),
      body: Center(
        //here where the magic happen here were the pages are identified and shown for the user in the PageView()
        child: PageView(
          scrollDirection: Axis.horizontal,
          controller: controller,
          children: [
            Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //first page would apper here and here is the style for it
                Container(width: 400, height: 400, child: slideImage[0]),
                Container(
                  alignment: Alignment.bottomCenter,
                  width: 400,
                  height: 125,
                  child: Text(
                    'Learn anytime\n and anywhere',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 400,
                  height: 125,
                  child: Text(
                    'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
                    textAlign: TextAlign.center,
                  ),
                ),
                PageIndicator(currentValue: 0),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.jumpToPage(1);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Next',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //here is page 2 and the style for it
            Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: 400,
                    height: 400,
                    child: slideImage[1],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  width: 400,
                  height: 125,
                  child: Text(
                    'Find a course\n for you',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 400,
                  height: 125,
                  child: Text(
                    'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
                    textAlign: TextAlign.center,
                  ),
                ),
                PageIndicator(currentValue: 1),

                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.jumpToPage(2);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Next',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            //here is page 3 and the style for it
            Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: 400,
                    height: 400,
                    child: slideImage[2],
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  width: 400,
                  height: 125,
                  child: Text(
                    'Improve your skills',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 400,
                  height: 125,
                  child: Text(
                    'Quarantine is the perfect time to spend your day learning something new, from anywhere!',
                    textAlign: TextAlign.center,
                  ),
                ),
                PageIndicator(currentValue: 2),

                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Let\'s Start !',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
