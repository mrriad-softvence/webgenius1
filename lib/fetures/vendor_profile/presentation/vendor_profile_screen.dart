import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webgenius/constants/text_font_style.dart';
import 'package:webgenius/fetures/vendor_profile/presentation/widgets/custom_appbar.dart';
import 'package:webgenius/fetures/vendor_profile/presentation/widgets/custom_review_card.dart';
import 'package:webgenius/helper/ui_helper.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';

class VendorProfileScreen extends StatefulWidget {
  const VendorProfileScreen({super.key});

  @override
  State<VendorProfileScreen> createState() => _VendorProfileScreenState();
}

class _VendorProfileScreenState extends State<VendorProfileScreen> {
  List<String> _menuItem = ['Bengali', 'Home made', 'Healthy', 'Fresh Daily'];
  final List<Map<String, String>> _reviewItem = [
    {
      "title": "Patrick Radden KeefeReviewer: David Grube and Gary DeLander",
      "subtitleImage": Assets.icons.startGroupIcon.path,
      "image": Assets.images.reviewImage.path,
    },
    {
      "title": "Patrick Radden KeefeReviewer: David Grube and Gary DeLander",
      "subtitleImage": Assets.icons.startGroupIcon.path,
      "image": Assets.images.reviewImage.path,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UIHelper.verticalSpace(40.h),

              CustomAppbar(),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  image: DecorationImage(
                    image: AssetImage(Assets.images.resurantItem.path),
                  ),
                ),
                height: 170.h,
                width: double.infinity,
              ),

              Text(
                "Arpita saha",
                style: TextFontStyle.textStyle20c000000Inter600,
              ),
              UIHelper.verticalSpace(12.h),

              Row(
                children: [
                  Image.asset(
                    Assets.icons.startGroupIcon.path,
                    height: 16.h,
                    width: 88.w,
                  ),
                  UIHelper.horizontalSpace(8.w),
                  Text("4.5", style: TextFontStyle.textStyle12c8E8E8EInter400),
                  Text(
                    "( 1522 Reviews )",
                    style: TextFontStyle.textStyle12c8E8E8EInter400,
                  ),
                ],
              ),

              Container(
                height: 26.h,
                width: 64.w,
                margin: EdgeInsets.only(top: 8.h),
                decoration: BoxDecoration(
                  color: AppColors.cE6FAE7,
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Container(
                        height: 16.h,
                        width: 16.w,
                        decoration: BoxDecoration(
                          color: AppColors.cFFFFFF,
                          borderRadius: BorderRadius.circular(6.r),
                          border: Border.all(
                            color: AppColors.c008000,
                            width: 3,
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            Assets.icons.circleIcon.path,
                            height: 6.h,
                            width: 6.w,
                          ),
                        ),
                      ),
                      UIHelper.horizontalSpace(12.w),
                      Text(
                        "Veg",
                        style: TextFontStyle.textStyle14c35D239Inter500,
                      ),
                    ],
                  ),
                ),
              ),
              UIHelper.verticalSpace(16.h),

              SizedBox(
                height: 26.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _menuItem.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 8.w),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 4.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        color: AppColors.cDEDDDE,
                      ),
                      child: Text(
                        _menuItem[index],
                        style: TextFontStyle.textStyle14c201F22Inter400,
                      ),
                    );
                  },
                ),
              ),
              UIHelper.verticalSpace(12.h),

              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.cF2F2F2,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About This Kitchen",
                        style: TextFontStyle.textStyle16c000000Inter500,
                      ),
                      UIHelper.verticalSpace(8.h),
                      Text(
                        "Experience the authentic taste of home-cooked meals with a variety of options including vegetarian, vegan, and non-vegetarian dishes. Each meal is prepared with fresh ingredients and traditional recipes",
                        style: TextFontStyle.textStyle12c333232Inter400,
                      ),
                      UIHelper.verticalSpace(10.h),
                      Row(
                        children: [
                          Image.asset(
                            Assets.icons.loccationIcon.path,
                            height: 16.h,
                            width: 16.w,
                          ),
                          UIHelper.horizontalSpace(6.w),
                          Text(
                            "Kolkata runagate",
                            style: TextFontStyle.textStyle14c333232Inter400,
                          ),
                        ],
                      ),
                      UIHelper.verticalSpace(10.h),
                      Row(
                        children: [
                          Image.asset(
                            Assets.icons.timeIcon.path,
                            height: 16.h,
                            width: 16.w,
                          ),
                          UIHelper.horizontalSpace(6.w),
                          Text(
                            "Delivery to Kolkata",
                            style: TextFontStyle.textStyle14c333232Inter400,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              UIHelper.verticalSpace(20.h),

              Container(
                height: 100.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: AppColors.cE1E1E1),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Contact & Social",
                        style: TextFontStyle.textStyle16c000000Inter500,
                      ),
                      UIHelper.verticalSpace(20.h),
                      Row(
                        children: [
                          Image.asset(
                            Assets.icons.contractIcon.path,
                            height: 16.h,
                            width: 16.h,
                          ),
                          UIHelper.horizontalSpace(8.w),
                          Text(
                            "xxxxxxxxxx",
                            style: TextFontStyle.textStyle14c262626Inter400,
                          ),
                        ],
                      ),
                      UIHelper.verticalSpace(8.h),
                      Row(
                        children: [
                          Image.asset(
                            Assets.icons.messageIcon.path,
                            height: 16.h,
                            width: 16.h,
                          ),
                          UIHelper.horizontalSpace(8.w),
                          Text(
                            "arpita@gmail.com",
                            style: TextFontStyle.textStyle14c262626Inter400,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              UIHelper.verticalSpace(20.h),

              Text(
                "Customer Review",
                style: TextFontStyle.textStyle20c000000Inter600,
              ),
              UIHelper.verticalSpace(12.h),
              CustomReviewCard(reviewItem: _reviewItem),
            ],
          ),
        ),
      ),
    );
  }
}


