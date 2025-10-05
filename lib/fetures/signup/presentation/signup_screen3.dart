import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webgenius/common_widgets/custom_button.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: Column(
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
              Text("tiffyn", style: TextFontStyle.textStyle24c000000Inter600),
            ],
          ),
          StepProgressIndicator(
            currentStep: currentStep,
            totalSteps: 3,
            activeColor: AppColors.cFF2626,
            inactiveColor: AppColors.cE5E7EB,
          ),



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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen3()),
                    );
                  },
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}
