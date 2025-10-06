import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webgenius/common_widgets/custom_button.dart';
import 'package:webgenius/common_widgets/custom_textform_field.dart';
import 'package:webgenius/constants/text_font_style.dart';
import 'package:webgenius/fetures/signup/presentation/signup_screen2.dart';
import 'package:webgenius/fetures/signup/presentation/widgets/step_procss_indicator.dart';
import 'package:webgenius/helper/ui_helper.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../login_screen/presentation/login_screen.dart';

class SignupScreen1 extends StatefulWidget {
  const SignupScreen1({super.key});

  @override
  State<SignupScreen1> createState() => _SignupScreen1State();
}

class _SignupScreen1State extends State<SignupScreen1> {
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isExpanded = false;


  int currentStep = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UIHelper.verticalSpace(60.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Assets.icons.tiffynLogo.path,
                    height: 36.h,
                    width: 36.w,
                  ),
                  UIHelper.horizontalSpace(12),
                  Text(
                    "tiffyn",
                    style: TextFontStyle.textStyle24c000000Inter600,
                  ),
                ],
              ),

              UIHelper.verticalSpace(40.h),

              Text(
                "Become a Delivery  Partner",
                style: TextFontStyle.textStyle18c141414Inter600,
              ),
              UIHelper.verticalSpace(12.h),
              Text(
                "Grow your business on our platform",
                style: TextFontStyle.textStyle12c595959Inter500,
              ),
              UIHelper.verticalSpace(16.h),

              // Step Progress Indicator
              StepProgressIndicator(
                currentStep: currentStep,
                totalSteps: 3,
                activeColor: AppColors.cFF2626,
                inactiveColor: AppColors.cE5E7EB,
              ),

              UIHelper.verticalSpace(16.h),

              // Form fields
              Text(
                "Basic Information",
                style: TextFontStyle.textStyle18c141414Inter600,
              ),
              UIHelper.verticalSpace(20.h),
              CustomTextFormField(
                text: "Full Name",
                controller: _fullNameController,
                prefixIcon: Image.asset(Assets.icons.userLight.path),
                hintText: "Enter your full name",
              ),
              UIHelper.verticalSpace(16.h),
              CustomTextFormField(
                text: "Email",
                controller: _emailController,
                prefixIcon: Image.asset(
                  Assets.icons.messageIcon.path,
                  color: AppColors.c595959,
                ),
                hintText: "Enter your email ",
              ),
              UIHelper.verticalSpace(16.h),
              CustomTextFormField(
                text: "Phone",
                controller: _phoneController,
                prefixIcon: Image.asset(
                  Assets.icons.contractIcon.path,
                  color: AppColors.c595959,
                ),
                hintText: "Enter your phone",
              ),
              UIHelper.verticalSpace(16.h),
              CustomTextFormField(
                text: "Passwords",
                controller: _passwordController,
                obscureText: !isExpanded,
                prefixIcon: Image.asset(
                  Assets.icons.lockIcon.path,
                  color: AppColors.c595959,
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Icon(
                    isExpanded ? Icons.visibility : Icons.visibility_off_sharp,
                  ),
                ),
                hintText: "Create a password",
              ),
              UIHelper.verticalSpace(16.h),

              // Button
              CustomButton(
                text: "Continue",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignupScreen2(),
                    ),
                  );
                },
              ),

              UIHelper.verticalSpace(26.h),

              // Already account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextFontStyle.textStyle12c595959Inter500,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Log in",
                      style: TextFontStyle.textStyle12cFF1414Inter500,
                    ),
                  ),
                ],
              ),

              UIHelper.verticalSpace(60.h),
            ],
          ),
        ),
      ),
    );
  }
}
