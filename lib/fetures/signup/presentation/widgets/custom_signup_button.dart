import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/text_font_style.dart';
import '../../../../gen/colors.gen.dart';

class CustomSignupButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isFilled;

  const CustomSignupButton({
    super.key,
    required this.text,
    required this.onTap,
    this.isFilled = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isFilled ? AppColors.cFF1F1F : AppColors.cFFFFFF,
          border: Border.all(
            color: isFilled ? Colors.transparent : AppColors.c595959,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: isFilled
                ? TextFontStyle.textStyle16cFFFFFFInter700
                : TextFontStyle.textStyle16c262626Inter700,
          ),
        ),
      ),
    );
  }
}
