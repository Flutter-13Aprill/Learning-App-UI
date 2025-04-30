import 'package:apr30/Screens/login_screen.dart';
import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  // This widget is used to show the page indicator and the button to navigate to the next page
  final int currentPageIndex;
  final TabController tabController;
  final void Function(int) onUpdateCurrentPageIndex;

  const PageIndicator({
    super.key,
    required this.tabController,
    required this.currentPageIndex,
    required this.onUpdateCurrentPageIndex,
  });
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    var buttonText = currentPageIndex == 2 ? "Let's Start" : "Next";

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TabPageSelector(
                controller: tabController,
                color: colorScheme.surface,
                selectedColor: colorScheme.primary,
              ),
            ],
          ),

          ElevatedButton(
            // The button to navigate to the next page or login screen
            onPressed: () {
              if (currentPageIndex == 2) {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
                return;
              }
              onUpdateCurrentPageIndex(currentPageIndex + 1);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 242, 143, 43),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text(buttonText),
          ),
        ],
      ),
    );
  }
}
