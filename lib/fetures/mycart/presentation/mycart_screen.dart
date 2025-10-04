import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webgenius/constants/text_font_style.dart';
import 'package:webgenius/fetures/product_details/presentation/widgets/custom_button.dart';
import 'package:webgenius/helper/ui_helper.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../vendor_profile/presentation/widgets/custom_appbar.dart';

class MycartScreen extends StatefulWidget {
  const MycartScreen({super.key});

  @override
  State<MycartScreen> createState() => _MycartScreenState();
}

class _MycartScreenState extends State<MycartScreen> {
  List<int> _counts = [];

  final List<Map<String, String>> _productList = [
    {
      "image": Assets.images.foodItem1.path,
      "name": "Sarah's Kitchen",
      "desc": "Experience authentic taste of home-cooked meals",
      "dish": "Ruti dal vat",
      "rating": "4.5",
      "price": "100",
    },
    {
      "image": Assets.images.foodItem1.path,
      "name": "Arpita Saha",
      "desc": "Fresh & healthy daily meals",
      "dish": "Veg Curry",
      "rating": "4.2",
      "price": "120",
    },
  ];

  @override
  void initState() {
    super.initState();
    _counts = List.filled(_productList.length, 1);
  }

  void _increment(int index) {
    setState(() {
      _counts[index]++;
    });
  }

  void _decrement(int index) {
    setState(() {
      if (_counts[index] > 0) _counts[index]--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppbar(),

              // Header Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Cart",
                    style: TextFontStyle.textStyle18c212121Poppins400,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextFontStyle.textStyle16c121212Inter500,
                    ),
                  ),
                ],
              ),

              // List of Cart Items
              Flexible(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: _productList.length,
                  itemBuilder: (context, index) {
                    final item = _productList[index];
                    final count = _counts[index];
                    return Padding(
                      padding: EdgeInsets.only(bottom: 12.h),
                      child: Container(
                        height: 94.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: AppColors.cFFFFFF,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              // Image
                              Container(
                                height: 70.h,
                                width: 70.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  image: DecorationImage(
                                    image: AssetImage(item["image"]!),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              UIHelper.horizontalSpace(12.w),

                              // Details
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          item["name"]!,
                                          style: TextFontStyle
                                              .textStyle16c262626Inter500,
                                        ),
                                        Container(
                                          height: 16.h,
                                          width: 16.w,
                                          decoration: BoxDecoration(
                                            color: AppColors.cFFFFFF,
                                            borderRadius:
                                            BorderRadius.circular(6.r),
                                            border: Border.all(
                                                color: AppColors.c008000,
                                                width: 3),
                                          ),
                                          child: Center(
                                            child: Image.asset(
                                              Assets.icons.circleIcon.path,
                                              height: 6.h,
                                              width: 6.w,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      item["desc"]!,
                                      style: TextFontStyle
                                          .textStyle10c595959Inter400,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          item["dish"]!,
                                          style: TextFontStyle
                                              .textStyle10c595959Inter400,
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              Assets.icons.startIcon.path,
                                              width: 16.w,
                                              height: 16.h,
                                            ),
                                            Text(
                                              item["rating"]!,
                                              style: TextFontStyle
                                                  .textStyle12c595959Inter400,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "₹${item["price"]!}",
                                          style: TextFontStyle
                                              .textStyle12c262626Inter400,
                                        ),
                                        Container(
                                          height: 28.h,
                                          width: 74.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(4.r),
                                            border: Border.all(
                                              width: 1.w,
                                              color: AppColors.cD9D9D9,
                                            ),
                                            color: AppColors.cFFFFFF,
                                            boxShadow: [
                                              BoxShadow(
                                                color: AppColors.c000000
                                                    .withValues(alpha: 0.1),
                                                spreadRadius: 1.r,
                                                blurRadius: 3.r,
                                                offset: const Offset(0, 1),
                                              ),
                                            ],
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: () => _decrement(index),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 6.w),
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
                                                    vertical: BorderSide(
                                                        width: 1.w,
                                                        color:
                                                        AppColors.cD9D9D9),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 4.w),
                                                  child: Text(
                                                    count < 10
                                                        ? "0$count"
                                                        : "$count",
                                                    style: TextFontStyle
                                                        .textStyle12c595959Inter400,
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () => _increment(index),
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 6.w),
                                                  child: Image.asset(
                                                    Assets.icons.plus.path,
                                                    width: 12.w,
                                                    height: 12.h,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),


              ),

              Row(
                children: [
                  Text("Add more item"),
                  IconButton(onPressed: () {
                    
                  }, icon: Image.asset(Assets.icons.f))
                ],
              ),
              
              CustomButton(text: "Continue")
            ],
          ),
        ),
      ),
    );
  }
}
