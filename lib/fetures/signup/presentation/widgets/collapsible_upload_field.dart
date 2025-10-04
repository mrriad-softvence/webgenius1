// lib/features/signup/presentation/widgets/collapsible_upload_field.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webgenius/constants/text_font_style.dart';
import 'package:webgenius/gen/colors.gen.dart';

class CollapsibleUploadField extends StatelessWidget {
  final String label;
  final bool isExpanded;
  final VoidCallback onTap;

  const CollapsibleUploadField({
    super.key,
    required this.label,
    required this.isExpanded,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 36.h,
        padding: isExpanded? null: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: BoxDecoration(
          color: AppColors.cFFFFFF,
          borderRadius: BorderRadius.circular(8.r),
          border: isExpanded ? null : Border.all(color: AppColors.cD9D9D9),
        ),
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextFontStyle.textStyle14c595959Inter400,
            ),
            Icon(
              isExpanded ? null : Icons.keyboard_arrow_down,
              color: AppColors.c6B7280,
            ),
          ],
        ),
      ),
    );
  }
}
