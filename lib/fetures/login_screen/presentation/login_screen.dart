import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webgenius/constants/text_font_style.dart';
import 'package:webgenius/common_widgets/custom_button.dart';
import 'package:webgenius/helper/ui_helper.dart';

import '../../../common_widgets/custom_textform_field.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String _selectedRole = 'Order';
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              UIHelper.verticalSpace(36.h),

              Center(
                child: Image.asset(
                  Assets.images.finalTiffynLogo1.path,
                  height: 65.h,
                  width: 109.w,
                ),
              ),

              UIHelper.verticalSpace(30.h),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    Text(
                      'Select your role',style: TextFontStyle.textStyle14c374151Inter500,

                    ),
                    UIHelper.verticalSpace(6.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildRoleChip('Order', Assets.icons.orderIcon.path),
                        _buildRoleChip('Deliver', Assets.icons.deliveryIcon.path),
                        _buildRoleChip('Vendor', Assets.icons.vendorIcon.path),
                      ],
                    ),
                  ],
                ),
              ),
              UIHelper.verticalSpace(30.h),

              CustomTextFormField(
                text: "Email or Username",
                controller: _emailController,
                hintText: 'Enter your mail or phone',
                prefixIcon: Padding(
                  padding: EdgeInsets.all(7.w),
                  child: Image.asset(
                    Assets.icons.messageIcon.path,
                    color: AppColors.c595959,
                    height: 16.h,
                    width: 16.w,
                  ),
                ),
              ),

              UIHelper.verticalSpace(24.h),
              CustomTextFormField(
                text: "Password",
                controller: _passwordController,
                hintText: 'Enter your password',
                obscureText: !isExpanded,
                prefixIcon: Padding(
                  padding: EdgeInsets.all(7.w),
                  child: Image.asset(
                    Assets.icons.messageIcon.path,
                    color: AppColors.c595959,
                    height: 16.h,
                    width: 16.w,
                  ),
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Icon(
                    isExpanded ? Icons.visibility : Icons.visibility_off,
                    color: AppColors.c595959,
                  ),
                ),
              )
              ,

              UIHelper.verticalSpace(10.h),

              GestureDetector(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Forget password",

                    style: TextFontStyle.textStyle12cBA7600Inter400,
                  ),
                ),
              ),
              UIHelper.verticalSpace(24.h),

              CustomButton(text: "Log in", onTap: () {  },),

              UIHelper.verticalSpace(16.h),

              Divider(thickness: 1, height: 1, color: AppColors.c4E2C11),
              UIHelper.verticalSpace(16.h),
              Text("Or continue with",style: TextFontStyle.textStyle14c595959Inter500,),
              UIHelper.verticalSpace(16.w),
              Container(
                height: 48.h,
                width: 126.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(color: AppColors.c595959),
                ),

                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Image.asset(
                        Assets.icons.googleIcon.path,
                        height: 24,
                        width: 24,
                      ),
                      UIHelper.horizontalSpace(10.w),
                      Text(
                        "Google",
                        style: TextFontStyle.textStyle16c1F1F1FInter700,
                      ),
                    ],
                  ),
                ),
              ),

              UIHelper.verticalSpace(24.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextFontStyle.textStyle12c595959Inter500,
                  ),
                  GestureDetector(
                    child: Text(
                      "Sign up",
                      style: TextFontStyle.textStyle12cFF1414Inter500,
                    ),
                  ),
                  Text(
                    " for tiffin",
                    style: TextFontStyle.textStyle12c595959Inter500,
                  ),
                ],
              ),

              UIHelper.verticalSpace(80.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRoleChip(String role, String imagePath) {
    bool isSelected = _selectedRole == role;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedRole = role;
        });
      },
      child: Container(
        height: 70.h,
        width: 80.w,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.cFF2626 : AppColors.cFFFFFF,
          border: Border.all(
            color: isSelected ? AppColors.cFF2626 : AppColors.c595959,
            width: 1.w,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 24.h,
              width: 24.w,
              color: isSelected ? AppColors.cFFFFFF : AppColors.c141414,
            ),
            UIHelper.verticalSpace(4.h),
            Text(
              role,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                color: isSelected ? AppColors.cFFFFFF : AppColors.c141414,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
