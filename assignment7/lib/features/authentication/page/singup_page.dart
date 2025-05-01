import 'package:assignment7/core/function/navigation.dart';
import 'package:assignment7/core/text/app_text.dart';
import 'package:assignment7/core/widgets/custom_button.dart';
import 'package:assignment7/core/widgets/custom_text_button.dart';
import 'package:assignment7/features/authentication/page/login_page.dart';
import 'package:assignment7/features/authentication/widget/custom_list_tile.dart';
import 'package:assignment7/features/authentication/widget/custom_textfield.dart';
import 'package:assignment7/features/home/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
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
                child: Image.asset("asset/image/singup.png", fit: BoxFit.cover),
              ),
              CustomListTile(title: AppText.singUp, subTitle: AppText.create),
              SizedBox(height: 16.h),
              CustomTextfield(
                hintText: AppText.name,
                controller: nameController,
              ),
              SizedBox(height: 16),
              CustomTextfield(
                hintText: AppText.email2,
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
                text: AppText.singUp,
                onPressed: () {
                  customReplacementNavigate(context, HomePage());
                },
              ),

              CustomTextButton(
                text: AppText.logIn,
                onPressed: () {
                  customPush(context, LoginPage());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
