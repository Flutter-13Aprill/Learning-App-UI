// Import material package and screens
import 'package:flutter/material.dart';
import 'package:learn_app_ui/screens/profile_screen.dart';
import 'package:learn_app_ui/screens/settings_screen.dart';
import 'package:learn_app_ui/screens/course_screen.dart';

// Main StatefulWidget class 
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Define the list of screens
  final List<Widget> _tabBarChildren = const [
    CourseScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  @override
  void initState() {
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: 
        // Using DefaultTabController to manage tab navigation
        DefaultTabController(
          initialIndex: 0, 
          length: _tabBarChildren.length, 
          child: Stack(
            alignment: Alignment.center,
            children: [
              
              TabBarView(
                children: _tabBarChildren,
              ),
              // Positioned TabBar at the bottom of the screen
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                    border: Border(
                      top: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      right: BorderSide(width: 1),
                      bottom: BorderSide(width: 0), 
                    ),
                  ),
                  // Put icons in the botom for topbar 
                  child: TabBar(
                    labelPadding: const EdgeInsets.symmetric(vertical: 15.0),
                    indicatorColor: Theme.of(context).colorScheme.primary, 
                    tabs: const [
               
                      Tab(
                        child: Column(
                          children: [
                            Icon(Icons.bookmark_add),
                            SizedBox(height: 5.0),
                            Text('Courses'),
                          ],
                        ),
                      ),
                      
                      Tab(
                        child: Column(
                          children: [
                            Icon(Icons.person),
                            SizedBox(height: 5.0),
                            Text('Profile'),
                          ],
                        ),
                      ),
                      
                      Tab(
                        child: Column(
                          children: [
                            Icon(Icons.settings),
                            SizedBox(height: 5.0),
                            Text('Settings'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
