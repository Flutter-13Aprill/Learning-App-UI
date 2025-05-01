import 'package:flutter/material.dart';

// --- Screen
import 'package:learning_app_ui/screens/signup_screen.dart';
import 'package:learning_app_ui/screens/home_screen.dart';

// --- Widgets
import 'package:learning_app_ui/widgets/custom_rounded_button.dart';
import 'package:learning_app_ui/widgets/login_widgets/row_social_networks_widget.dart';
import 'package:learning_app_ui/widgets/textfield_widgets/email_textfield_widget.dart';
import 'package:learning_app_ui/widgets/textfield_widgets/password_textfield_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:  16.0),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [
        
            SizedBox(height: 96),
            
            Image.asset('assets/images/login_images/illustration (2).png'),
        
            SizedBox(height: 16),
        
            Text(
              'Log in',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.5
              ),
            ),
        
              SizedBox(height: 8,),
        
              Text(
                'Login with social networks',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400
                ),
              ),
        
              SizedBox(height: 8),
              
              RowSocialNetworksWidget(),

              SizedBox(height: 16),

              EmailTextfieldWidget(),

              SizedBox(height: 16),

              PasswordTextfieldWidget(),

              SizedBox(height: 16),
        
              TextButton(
                onPressed: () {},
                child: Text('Forgot Password?',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff78746D)
                ),
                )
              ),
        
            SizedBox(height: 16),

            CustomRoundedButton(title: 'Log in', onPressed: () =>  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen())),),
            
            SizedBox(height: 16),
        
            InkWell(
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  SignupScreen())),
              child: Text('Sign up', style: TextStyle(fontSize: 16),),
            )
          ],
        ),
      ),
    );
  }
}