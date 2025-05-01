import 'package:assignment7/core/function/navigation.dart';
import 'package:assignment7/core/text/app_text.dart';
import 'package:assignment7/core/widgets/custom_button.dart';
import 'package:assignment7/core/widgets/custom_text_button.dart';
import 'package:assignment7/features/authentication/page/singup_page.dart';
import 'package:assignment7/features/authentication/widget/custom_container.dart';
import 'package:assignment7/features/authentication/widget/custom_list_tile.dart';
import 'package:assignment7/features/authentication/widget/custom_textfield.dart';
import 'package:assignment7/features/home/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 69),
          child: Column(
            children: [
              SizedBox(
                height: 253.h,
                width: 343.w,
                child: Image.asset("asset/image/login.png"),
              ),

              CustomListTile(title: AppText.logIn, subTitle: AppText.social),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomContainer(image: 'asset/image/facebook-icon.png'),
                  SizedBox(width: 12.w),
                  CustomContainer(image: 'asset/image/instagram.png'),
                  SizedBox(width: 12.w),
                  CustomContainer(image: 'asset/image/google.png'),
                ],
              ),
              SizedBox(height: 16.h),
              CustomTextfield(
                hintText: AppText.email,
                controller: emailController,
              ),
              SizedBox(height: 16),
              CustomTextfield(
                hintText: AppText.password,
                controller: passwordController,
                isPassword: true,
              ),
              SizedBox(height: 16.h),
              CustomButton(
                text: AppText.logIn,
                onPressed: () {
                  customReplacementNavigate(context, HomePage());
                },
              ),
              CustomTextButton(
                text: AppText.singUp,
                onPressed: () {
                  customPush(context, SignupPage());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
