// lib/features/signup/presentation/widgets/custom_dropdown.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webgenius/constants/text_font_style.dart';
import 'package:webgenius/gen/colors.gen.dart';
import 'package:webgenius/helper/ui_helper.dart';

class CustomDropdown extends StatelessWidget {
  final String label;
  final String hint;
  final String? value;
  final List<String> items;
  final ValueChanged<String?> onChanged;

  const CustomDropdown({
    super.key,
    required this.label,
    required this.hint,
    required this.value,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextFontStyle.textStyle14c595959Inter600,
        ),
        UIHelper.verticalSpace(12.h),
        Container(
          height: 55.h,

          decoration: BoxDecoration(
            color: AppColors.cF0F0F0,
            borderRadius: BorderRadius.circular(8),

          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              value: value,
              hint: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  hint,
                  style: TextFontStyle.textStyle14c595959Inter600,
                ),
              ),
              items: items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Text(item),
                  ),
                );
              }).toList(),
              onChanged: onChanged,
              icon: Padding(
                padding: EdgeInsets.only(right: 12.w),
                child: Icon(Icons.keyboard_arrow_down, color: AppColors.c6B7280),
              ),
            ),
          ),
        ),
      ],
    );
  }
}