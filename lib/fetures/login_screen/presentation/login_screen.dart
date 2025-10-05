import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webgenius/constants/text_font_style.dart';
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
  String _selectedRole = 'Order';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              UIHelper.verticalSpace(40.h),

              // Logo Section
              Center(
                child: Image.asset(
                  Assets.images.finalTiffynLogo1.path,
                  height: 65.h,
                  width: 109.w,
                ),
              ),

              UIHelper.verticalSpace(32.h),

              // Role Selection Section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select your role',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.c595959,
                    ),
                  ),
                  UIHelper.verticalSpace(16.h),
                  Row(
                    children: [
                      _buildRoleChip('Order', Assets.icons.orderIcon.path),
                      SizedBox(width: 12.w),
                      _buildRoleChip('Deliver', Assets.icons.deliveryIcon.path),
                      SizedBox(width: 12.w),
                      _buildRoleChip('Vendor', Assets.icons.vendorIcon.path),
                    ],
                  ),
                ],
              ),
              UIHelper.verticalSpace(36.h),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Email or Username",style: TextFontStyle.textStyle14c595959Inter600,)),
              UIHelper.verticalSpace(12.h),

              CustomTextFormField(
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

              TextButton(onPressed: () {}, child: Text("Forget password")),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRoleChip(String role, String imagePath) {
    bool isSelected = _selectedRole == role;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedRole = role;
          });
        },
        child: Container(
          height: 70.h,
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
      ),
    );
  }
}
