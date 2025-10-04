import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/text_font_style.dart';
import '../../../../gen/colors.gen.dart';

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Container(
        height: 41.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: AppColors.cFF1F1F,
        ),
        child: Center(
          child: Text(
            text,
            style: TextFontStyle.textStyle16cFFFFFFInter500,
          ),
        ),
      ),
    );
  }
}
