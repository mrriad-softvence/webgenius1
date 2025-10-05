import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webgenius/constants/text_font_style.dart';
import 'package:webgenius/helper/ui_helper.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';

class SignupScreen1 extends StatefulWidget {
  const SignupScreen1({super.key});

  @override
  State<SignupScreen1> createState() => _SignupScreen1State();
}

class _SignupScreen1State extends State<SignupScreen1> {
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
              Image.asset(Assets.icons.tiffynLogo.path,height: 36.h,width: 36.w,),
              UIHelper.horizontalSpace(12),
              Text("tiffyn",style: TextFontStyle.textStyle24c000000Inter600,),
            ],
          )


        ],
      ),
    );
  }
}
