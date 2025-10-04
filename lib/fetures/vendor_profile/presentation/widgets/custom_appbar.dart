import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/text_font_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helper/ui_helper.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          'assets/icons/backbutton_icon.svg',
          height: 30.h,
          width: 30.w,
          fit: BoxFit.contain,
        ),
        Row(
          children: [
            Image.asset(
              Assets.icons.tiffynLogo.path,
              height: 36.h,
              width: 36.w,
            ),
            UIHelper.horizontalSpace(12.w),
            Text(
              "tiffyn",
              style: TextFontStyle.textStyle24c000000Inter600,
            ),
          ],
        ),
        Container(
          height: 36.h,
          width: 36.w,
          decoration: BoxDecoration(
            border: Border.all(width: 1.w, color: AppColors.cE3E7EC),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Image.asset(
              Assets.icons.notificationIcon.path,
              height: 24,
              width: 24,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
