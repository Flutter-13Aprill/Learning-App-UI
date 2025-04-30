import 'package:flutter/material.dart';
import 'login.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

/*StatefulWidget: Used for applications that have a state that changes over time.
  pageController: Used to control the navigation between slides. */
class _IntroPageState extends State<IntroPage> {
  final PageController _pageController = PageController();
  int currentPage = 0;

  final List<Map<String, String>> pages = [
    {
      'image': 'assets/pic3/intro1.png',
      'title': 'Learn anytime\n and anywhere',
      'desc':
          'Quarantine is the perfect time to spend your day learning something new.from anywhere!',
    },
    {
      'image': 'assets/pic3/intro2.png',
      'title': 'Find a course \n for you',
      'desc':
          'Quarantine is the perfect time to spend your day learning something new.from anywhere!',
    },
    {
      'image': 'assets/pic3/intro3.png',
      'title': 'Improve your skills',
      'desc':
          'Quarantine is the perfect time to spend your day learning something new.from anywhere!',
    },
  ];


//nextPage: A function used to navigate to the next page "Login page".
  void _nextPage() {
    if (currentPage < 2) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 40,
            right: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
            ),
          ),
          PageView.builder(
            controller: _pageController,
            itemCount: pages.length,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      pages[index]['image']!,
                      width: 340,
                      height: 340,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 30),
                    Text(
                      pages[index]['title']!,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      pages[index]['desc']!,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        pages.length,
                        (dotIndex) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: dotIndex == currentPage
                                ? Colors.deepOrange
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: double.infinity,
                      child:ElevatedButton(
                 onPressed: _nextPage,
                 style: ElevatedButton.styleFrom(
                 backgroundColor: const Color.fromARGB(255, 218, 85, 45),
                 padding: const EdgeInsets.symmetric(vertical: 16),
                 shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(12),
                 ),
                 ),
                child: Text(
                currentPage == 2 ? "Let's Start" : 'Next',
                style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                ),
                ),
                ),

                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
