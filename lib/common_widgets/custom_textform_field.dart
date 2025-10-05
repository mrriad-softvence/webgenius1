import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webgenius/constants/text_font_style.dart';

import '../gen/colors.gen.dart';
import '../helper/ui_helper.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? text;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final bool obscureText;

  const CustomTextFormField({
    super.key,
    required this.controller,
    this.text,
    required this.hintText,
    this.prefixIcon,
    this.validator,
    this.onChanged,
    this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text!, style: TextFontStyle.textStyle14c595959Inter600),
        UIHelper.verticalSpace(12.h),
        Container(
          padding: EdgeInsets.only(
            left: 24.w,
            right: 10.h,
            bottom: 10.h,
            top: 10.h,
          ),
          height: 48.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: AppColors.cF0F0F0,
          ),
          child: TextFormField(
            controller: controller,
            obscureText: obscureText,
            keyboardType: keyboardType,
            onChanged: onChanged,
            decoration: InputDecoration(
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              hintText: hintText,
              hintStyle: TextFontStyle.textStyle14c595959Inter600,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
            ),
            validator: validator,
          ),
        ),
      ],
    );
  }
}
