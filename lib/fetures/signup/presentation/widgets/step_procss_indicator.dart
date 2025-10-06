import 'package:flutter/material.dart';
import 'package:webgenius/constants/text_font_style.dart';
import '../../../../gen/colors.gen.dart';

class StepProgressIndicator extends StatelessWidget {
  final int currentStep;
  final int totalSteps;
  final Color activeColor;
  final Color activeTextColor;
  final Color inactiveColor;

  const StepProgressIndicator({
    super.key,
    required this.currentStep,
    this.totalSteps = 3,
    this.activeColor = AppColors.cFF2626,
    this.inactiveColor = AppColors.cE5E7EB,
    this.activeTextColor = AppColors.cFFFFFF,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(totalSteps * 2 - 1, (index) {
        if (index.isEven) {
          int step = (index ~/ 2) + 1;
          bool isActive = step <= currentStep;
          return Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isActive ? activeColor : inactiveColor,
            ),
            alignment: Alignment.center,
            child: Text(
              "$step",
              style: isActive
                  ? TextFontStyle.textStyle14cFFFFFFInter400
                  : TextFontStyle.textStyle14c4B5563Inter400,
            ),
          );
        } else {
          // Line item
          int lineIndex = (index ~/ 2) + 1;
          bool isLineActive = lineIndex < currentStep;
          return Expanded(
            child: Container(
              height: 5,
              color: isLineActive ? activeColor : inactiveColor,
            ),
          );
        }
      }),
    );
  }
}
