// lib/features/signup/presentation/widgets/custom_checkbox.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webgenius/constants/text_font_style.dart';
import 'package:webgenius/helper/ui_helper.dart';

class CustomCheckbox extends StatelessWidget {
  final bool value;
  final String label;
  final ValueChanged<bool> onChanged;

  const CustomCheckbox({
    super.key,
    required this.value,
    required this.label,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 13.h,
          height: 13.w,
          child: Checkbox(
            value: value,
            onChanged: (bool? newValue) => onChanged(newValue ?? false),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        UIHelper.horizontalSpace(12.w),
        Expanded(
          child: Text(
            label,
            style: TextFontStyle.textStyle12c595959Inter500,
          ),
        ),
      ],
    );
  }
}