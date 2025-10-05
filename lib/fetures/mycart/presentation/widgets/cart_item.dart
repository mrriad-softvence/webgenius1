import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/text_font_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helper/ui_helper.dart';
import '../../model/cart_model.dart';


class CartItemWidget extends StatelessWidget {
  final CartItem item;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback onToggleDescription;
  final bool isExpanded;

  const CartItemWidget({
    super.key,
    required this.item,
    required this.onIncrement,
    required this.onDecrement,
    required this.onToggleDescription,
    required this.isExpanded,
  });

  @override
  Widget build(BuildContext context) {
    final totalPrice = item.price * item.quantity;

    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: AppColors.cFFFFFF,
          boxShadow: [
            BoxShadow(
              color: AppColors.c5A6CEA.withValues(alpha: 0.07),
              offset: Offset(12, 26),
              blurRadius: 25,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                height: 60.h,
                width: 70.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  image: DecorationImage(
                    image: AssetImage(item.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              UIHelper.horizontalSpace(12.w),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(item.name, style: TextFontStyle.textStyle16c262626Inter500),
                        Container(
                          height: 16.h,
                          width: 16.w,
                          decoration: BoxDecoration(
                            color: AppColors.cFFFFFF,
                            borderRadius: BorderRadius.circular(6.r),
                            border: Border.all(
                              color: AppColors.c008000,
                              width: 3.w,
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
                      ],
                    ),

                    LayoutBuilder(
                      builder: (context, constraints) {
                        final textSpan = TextSpan(
                          text: item.description,
                          style: TextFontStyle.textStyle10c595959Inter400,
                        );
                        final textPainter = TextPainter(
                          text: textSpan,
                          maxLines: 1,
                          textDirection: TextDirection.ltr,
                        )..layout(maxWidth: constraints.maxWidth);

                        final isOverflowing = textPainter.didExceedMaxLines;

                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                item.description,
                                style: TextFontStyle.textStyle10c595959Inter400,
                                maxLines: isExpanded ? null : 1,
                                overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                              ),
                            ),
                            if (isOverflowing)
                              GestureDetector(
                                onTap: onToggleDescription,
                                child: Text(
                                  isExpanded ? "Read Less" : "Read More",
                                  style: TextFontStyle.textStyle10c595959Inter400.copyWith(
                                    decoration: TextDecoration.underline,
                                    decorationColor: AppColors.c000000,
                                    decorationThickness: 1.0,
                                  ),
                                ),
                              ),
                          ],
                        );
                      },
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(item.dish, style: TextFontStyle.textStyle10c595959Inter400),
                        Row(
                          children: [
                            Image.asset(Assets.icons.startIcon.path, width: 16.w, height: 16.h),
                            Text(item.rating.toString(), style: TextFontStyle.textStyle12c595959Inter400),
                          ],
                        ),
                      ],
                    ),
                    UIHelper.verticalSpace(3.h),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("₹$totalPrice", style: TextFontStyle.textStyle12c262626Inter400),
                        Container(
                          height: 20.h,
                          width: 76.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.r),
                            border: Border.all(width: 1.w, color: AppColors.cD9D9D9),
                            color: AppColors.cFFFFFF,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.c000000.withValues(alpha: 0.1),
                                spreadRadius: 1.r,
                                blurRadius: 3.r,
                                offset: const Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: onDecrement,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                                  child: Image.asset(Assets.icons.minus.path, width: 12.w, height: 12.h),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.symmetric(
                                    vertical: BorderSide(width: 1.w, color: AppColors.cD9D9D9),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                                  child: Text(
                                    item.quantity < 10 ? "0${item.quantity}" : "${item.quantity}",
                                    style: TextFontStyle.textStyle12c595959Inter400,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: onIncrement,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 6.w),
                                  child: Image.asset(Assets.icons.plus.path, width: 12.w, height: 12.h),
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
  }
}
