import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webgenius/helper/ui_helper.dart';

import '../../../../constants/text_font_style.dart';
import '../../../../gen/colors.gen.dart';

class CustomReviewCard extends StatelessWidget {
  const CustomReviewCard({
    super.key,
    required List<Map<String, String>> reviewItem,
  }) : _reviewItem = reviewItem;

  final List<Map<String, String>> _reviewItem;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _reviewItem.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        final item = _reviewItem[index];

        return Container(
          margin: EdgeInsets.only(bottom: 10.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: AppColors.cF2F2F2,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(item["image"]!, width: 50.w, height: 50.h),
                ),

                UIHelper.horizontalSpace(12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item["title"] ?? "",
                        style: TextFontStyle.textStyle12c333333Inter400,
                      ),

                      UIHelper.verticalSpace(8.h),
                      if (item["subtitleImage"] != null)
                        Image.asset(
                          item["subtitleImage"]!,
                          height: 13.h,
                          width: 75.w,
                          fit: BoxFit.contain,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
