import 'package:flutter/material.dart';

// --- Screens
import 'package:learning_app_ui/screens/home_screen.dart';
import 'package:learning_app_ui/screens/login_screen.dart';

// --- Widgets
import 'package:learning_app_ui/widgets/custom_rounded_button.dart';
import 'package:learning_app_ui/widgets/textfield_widgets/email_textfield_widget.dart';
import 'package:learning_app_ui/widgets/textfield_widgets/name_textfield_widget.dart';
import 'package:learning_app_ui/widgets/textfield_widgets/password_textfield_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        
            SizedBox(height: 102,),
            
            Image.asset('assets/images/signup_images/illustration (3).png'),
        
            SizedBox(height: 16),
        
            Text(
              'Sign up',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.5
              ),
            ),
        
              SizedBox(height: 8,),
        
              Text(
                'Create your account',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400
                ),
              ),
              
              SizedBox(height: 16),

              NameTextfieldWidget(),
        
              SizedBox(height: 16),

              EmailTextfieldWidget(),
        
              SizedBox(height: 16),
              
              PasswordTextfieldWidget(),
              
              SizedBox(height: 48),
              
              CustomRoundedButton(
                title: 'Sign up', 
                onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                }),
              SizedBox(height: 16),
        
            InkWell(
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen())),
              child: Text('Log in', style: TextStyle(fontSize: 16),),
            )
          ],
        ),
      ),
    );
  }
}