import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webgenius/common_widgets/custom_button.dart';
import 'package:webgenius/fetures/login_screen/presentation/login_screen.dart';
import 'package:webgenius/fetures/signup/presentation/widgets/custom_checkbox.dart';
import 'package:webgenius/fetures/signup/presentation/widgets/custom_signup_button.dart';
import 'package:webgenius/fetures/signup/presentation/widgets/step_procss_indicator.dart';

import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helper/ui_helper.dart';

class SignupScreen3 extends StatefulWidget {
  const SignupScreen3({super.key});

  @override
  State<SignupScreen3> createState() => _SignupScreen3State();
}

class _SignupScreen3State extends State<SignupScreen3> {
  int currentStep = 2;
  bool agreeToTerms = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
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
              StepProgressIndicator(
                currentStep: currentStep,
                totalSteps: 3,
                activeColor: AppColors.cFF2626,
                inactiveColor: AppColors.cE5E7EB,
              ),

              UIHelper.verticalSpace(16.h),
              Text(
                "Payment Details",
                style: TextFontStyle.textStyle16c141414Inter600,
              ),
              UIHelper.verticalSpace(20.h),
              Text(
                "Bank/Mobile Wallet Details ",
                style: TextFontStyle.textStyle14c595959Inter600,
              ),
              UIHelper.verticalSpace(12.h),

              Container(
                height: 55.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: AppColors.cF0F0F0,
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(10.r),
                    child: Text(
                      "Enter your Phone Pay/Google Pay or bank account details",
                      style: TextFontStyle.textStyle10c595959Inter600,
                    ),
                  ),
                ),
              ),
              UIHelper.verticalSpace(16.h),
              Container(
                height: 60.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: AppColors.cFFF0F0,
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(16.r),
                    child: Row(
                      children: [
                        Image.asset(Assets.icons.warningIcon.path,height: 18.h,width: 18.w,),
                        
                        UIHelper.horizontalSpace(10.w),
                        Text(
                          "Your earnings will be transferred to  Your\n earnings will be transferred to ",
                          style: TextFontStyle.textStyle12c595959Inter400,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              UIHelper.verticalSpace(16.h),
              CustomCheckbox(
                value: agreeToTerms,
                label: 'I agree to the Terms of Service and Privacy Policy',
                onChanged: (value) => setState(() => agreeToTerms = value),
              ),
              UIHelper.verticalSpace(16.h),



              Row(
                children: [
                  Expanded(
                    child: CustomSignupButton(
                      text: "Previous",
                      isFilled: false,
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  UIHelper.horizontalSpace(30.w),
                  Expanded(
                    child: CustomSignupButton(
                      text: "Create Account",
                      isFilled: true,
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => SignupScreen3(),
                        //   ),
                        // );
                      },
                    ),
                  ),
                ],
              ),

              UIHelper.verticalSpace(26.w),

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
            ],
          ),
        ),
      ),
    );
  }
}
