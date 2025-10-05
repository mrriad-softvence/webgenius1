import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webgenius/constants/text_font_style.dart';
import 'package:webgenius/common_widgets/custom_button.dart';
import 'package:webgenius/fetures/vendor_profile/presentation/widgets/custom_appbar.dart';
import 'package:webgenius/helper/ui_helper.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int _count = 1;
  int _currentIndex = 0;
  final PageController _pageController = PageController();


  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      if (_count > 0) {
        _count--;
      }
    });
  }

  final List<String> _images = [
    Assets.images.foodItem1.path,
    Assets.images.foodItem1.path,
    Assets.images.foodItem1.path,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            UIHelper.verticalSpace(50.h),
            CustomAppbar(),
            UIHelper.verticalSpace(10.h),
            Column(
              children: [
                SizedBox(
                  height: 259.h,
                  width: double.infinity,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: _images.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 4.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          image: DecorationImage(
                            image: AssetImage(_images[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                UIHelper.verticalSpace(12.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    _images.length,
                    (index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      height: 8.h,
                      width: _currentIndex == index ? 8.w : 8.w,
                      decoration: BoxDecoration(
                        color: _currentIndex == index
                            ? AppColors.c000000
                            : AppColors.cCDCDCD,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpace(12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Bengali khabar",
                  style: TextFontStyle.textStyle20c111111Inter600,
                ),
                Container(
                  height: 20.h,
                  width: 20.w,
                  decoration: BoxDecoration(
                    color: AppColors.cFFFFFF,
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(color: AppColors.c008000, width: 3),
                  ),
                  child: Center(
                    child: Image.asset(
                      Assets.icons.circleIcon.path,
                      height: 10.h,
                      width: 10.w,
                    ),
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpace(4.h),
            Text(
              "A rich and creamy North Indian curry made with soft paneer cubes simmered in a tomato-butter gravy. ",
              style: TextFontStyle.textStyle12c525252Inter400,
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("₹290", style: TextFontStyle.textStyle20c000000Inter500),

              Container(
                height: 20.h,
                width: 72.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                  border: Border.all(width: 1.w, color: AppColors.cD9D9D9),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.c000000.withValues(alpha: 0.1),
                      spreadRadius: 1.r,
                      blurRadius: 3.r,
                      offset: Offset(0, 1),
                    ),
                  ],
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: _decrement,
                      child: Padding(
                        padding: EdgeInsets.only(left: 6.w),
                        child: Image.asset(
                          Assets.icons.minus.path,
                          width: 12.w,
                          height: 12.h,
                        ),
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        border: Border.symmetric(
                          vertical: BorderSide(width: 1, color: AppColors.cD9D9D9),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: Text(
                          _count < 10 ? "0$_count" : "$_count",
                          style: TextFontStyle.textStyle12c595959Inter400,
                        ),
                      ),
                    ),

                    InkWell(
                      onTap: _increment,
                      child: Padding(
                        padding: EdgeInsets.only(right: 6.w),
                        child: Image.asset(
                          Assets.icons.plus.path,
                          width: 12.w,
                          height: 12.h,
                        ),
                      ),
                    ),
                  ],
                ),
              )
                ],
              ),
            ),

            Row(
              children: [
                Image.asset(
                  Assets.icons.startGroupIcon.path,
                  height: 16.h,
                  width: 84.w,
                ),
                UIHelper.horizontalSpace(8.w),
                Text("3.4", style: TextFontStyle.textStyle12c8E8E8EInter400),
                Text(
                  "( 1522 Reviews )",
                  style: TextFontStyle.textStyle12c8E8E8EInter400,
                ),
              ],
            ),

            UIHelper.verticalSpace(32.h),

            CustomButton(text: 'Add to Cart', onTap: () {  },),

            Row(
              children: [
                Text("Add more items",style: TextFontStyle.textStyle16c121212Inter400,),
                Image.asset(Assets.icons.arrowLeftIconPng.path)
              ],
            )
          ],
        ),
      ),
    );
  }
}
