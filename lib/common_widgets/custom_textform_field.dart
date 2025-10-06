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
        if (text != null && text!.isNotEmpty) ...[
          Text(
            text!,
            style: TextFontStyle.textStyle14c595959Inter600
          ),
          UIHelper.verticalSpace(8.h),
        ],
        Container(
          height: 40.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: AppColors.cF0F0F0,
            border: Border.all()
          ),
          child: Center(
            child: TextFormField(
              controller: controller,
              obscureText: obscureText,
              keyboardType: keyboardType,
              onChanged: onChanged,
              validator: validator,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 12.h,
                ),
                hintText: hintText,
                hintStyle: TextFontStyle.textStyle14c595959Inter600,
                prefixIcon: prefixIcon != null
                    ? Padding(
                  padding: EdgeInsets.only(left: 24.w, right: 10.w, top: 10.h,bottom: 10.h),
                  child: SizedBox(
                    height: 16.h,
                    width: 16.w,
                    child: prefixIcon,
                  ),
                )
                    : null,
                suffixIcon: suffixIcon != null
                    ? Padding(
                  padding: EdgeInsets.only(right: 8.w),
                  child: SizedBox(
                    height: 20.h,
                    width: 20.w,
                    child: suffixIcon,
                  ),
                )
                    : null,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
