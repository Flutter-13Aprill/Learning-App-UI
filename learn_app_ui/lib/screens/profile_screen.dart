// Import Packages & screens
import 'package:flutter/material.dart';
import 'package:learn_app_ui/screens/login_screen.dart';

// main wedget
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar 
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 75,
        toolbarHeight: 75,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: GestureDetector(
            onTap: () {}, 
            child: Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey),
              ),
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
                size: 20.0,
              ),
            ),
          ),
        ),
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        centerTitle: true,
      ),

      // Main body
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile picture
              Container(
                width: 150,
                height: 150,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary,
                    width: 5.0,
                  ),
                ),
                child: Image.asset(
                  'assets/images/defualt-user.png',
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 18),

              // Profile option buttons
              ProfileScreenContainer(
                text: "Your Courses",
                onPressed: () {},
              ),
              ProfileScreenContainer(
                text: "Saved",
                onPressed: () {},
              ),
              ProfileScreenContainer(
                text: "Payment",
                onPressed: () {},
              ),

              // Logout button
              TextButton(
                onPressed: () {
                  // Navigate back to login screen and replace the current screen
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text(
                  'Logout',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class ProfileScreenContainer extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const ProfileScreenContainer({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, 
      child: Container(
        padding: const EdgeInsets.all(13),
        margin: const EdgeInsets.only(bottom: 8),
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
