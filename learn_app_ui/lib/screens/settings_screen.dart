// import packages
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Main widget for the Settings screen
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  
  bool notificationsIsEnabled = false;

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
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
                size: 20.0,
              ),
            ),
          ),
        ),
        // Title of the screen
        title: Text(
          'Settings', 
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(8),
          height: MediaQuery.of(context).size.height - 200,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Settings image at the top
                Image.asset(
                  'assets/images/settings.png',
                  width: double.infinity,
                ),
                const SizedBox(height: 8),
                
                // Notifications toggle
                SwitchListTile(
                  contentPadding: const EdgeInsets.all(8),
                  // notefgations icon
                  secondary: Container(
                    alignment: Alignment.center,
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      CupertinoIcons.bell_fill,
                      size: 20.0,
                    ),
                  ),
                  title: Text(
                    "Notifications",
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 21.0,
                          letterSpacing: .1,
                        ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: const BorderSide(width: 1),
                  ),
                  value: notificationsIsEnabled,
                  
                  onChanged: (bool value) {
                    setState(() {
                      notificationsIsEnabled = value;
                    });
                  },
                ),

                //  title of account info
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  width: double.infinity,
                  child: Text(
                    "Account Information",
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),

                // User name setting
                SettingsScreenContainer(
                  title: "Name",
                  icon: Icons.person_2,
                  subTitle: 'AHMED',
                  onPressed: () {}, 
                ),

                // Email setting
                SettingsScreenContainer(
                  title: "Email",
                  icon: Icons.mail,
                  subTitle: 'ahmed@gmail.com',
                  onPressed: () {},
                ),

                // Password setting
                SettingsScreenContainer(
                  title: "Password",
                  icon: Icons.lock,
                  subTitle: "Changed 2 weeks ago",
                  onPressed: () {}, 
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class SettingsScreenContainer extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  final VoidCallback? onPressed;

  const SettingsScreenContainer({
    super.key,
    this.onPressed,
    required this.title,
    required this.icon,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        
        leading: Container(
          alignment: Alignment.center,
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 20.0),
        ),
        // Subtitle text
        subtitle: Text(
          subTitle,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        // Title text
        title: Text(
          title,
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 21.0,
                letterSpacing: .1,
              ),
        ),
        // Border decoration
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
          side: const BorderSide(width: 1),
        ),
        //  arrow icon
        trailing: GestureDetector(
          onTap: onPressed,
          child: const Icon(Icons.arrow_forward_ios_outlined),
        ),
      ),
    );
  }
}
