import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webgenius/fetures/mycart/presentation/widgets/cart_item.dart';
import '../../../gen/colors.gen.dart';
import '../../../constants/text_font_style.dart';
import '../../../helper/ui_helper.dart';
import '../../vendor_profile/presentation/widgets/custom_appbar.dart';
import '../../../fetures/product_details/presentation/widgets/custom_button.dart';
import '../../../gen/assets.gen.dart';
import '../model/cart_model.dart';

class MycartScreen extends StatefulWidget {
  const MycartScreen({super.key});

  @override
  State<MycartScreen> createState() => _MycartScreenState();
}

class _MycartScreenState extends State<MycartScreen> {
  List<CartItem> _cartItems = [];
  List<bool> _isExpanded = [];
  double deliveryCharge = 0;

  @override
  void initState() {
    super.initState();
    _cartItems = [
      CartItem(
        image: Assets.images.foodItem1.path,
        name: "Sarah's Kitchen",
        description: "Experience authentic taste of home-cooked meals, made with love and fresh ingredients every day.",
        dish: "Ruti dal vat",
        rating: 4.5,
        price: 100,
      ),
      CartItem(
        image: Assets.images.foodItem1.path,
        name: "Sarah's Kitchen",
        description: "Experience authentic taste of home-cooked meals, made with love and fresh ingredients every day.",
        dish: "Ruti dal vat",
        rating: 4.5,
        price: 100,
      ),
      CartItem(
        image: Assets.images.foodItem1.path,
        name: "Sarah's Kitchen",
        description: "Experience authentic taste of home-cooked meals, made with love and fresh ingredients every day.",
        dish: "Ruti dal vat",
        rating: 4.5,
        price: 100,
      ),
    ];
    _isExpanded = List.filled(_cartItems.length, false);

    Future.delayed( Duration(milliseconds: 500), () {
      setState(() => deliveryCharge = 30);
    });
  }

  void _increment(int index) {
    setState(() => _cartItems[index].quantity++);
  }

  void _decrement(int index) {
    setState(() {
      if (_cartItems[index].quantity > 0) _cartItems[index].quantity--;
    });
  }

  void _toggleDescription(int index) {
    setState(() => _isExpanded[index] = !_isExpanded[index]);
  }

  int get subtotal => _cartItems.fold(0, (total, item) => total + item.price * item.quantity);

  @override
  Widget build(BuildContext context) {
    final visibleItems = _cartItems.where((item) => item.quantity > 0).toList();

    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbar(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Cart", style: TextFontStyle.textStyle18c212121Poppins400),
                  TextButton(
                    onPressed: () {},
                    child: Text("See All", style: TextFontStyle.textStyle16c121212Inter500),
                  ),
                ],
              ),

              Flexible(
                child: visibleItems.isEmpty
                    ? const Center(child: Text("Your cart is empty"))
                    : ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: visibleItems.length,
                  itemBuilder: (context, index) {
                    final actualIndex = _cartItems.indexOf(visibleItems[index]);
                    return CartItemWidget(
                      item: _cartItems[actualIndex],
                      onIncrement: () => _increment(actualIndex),
                      onDecrement: () => _decrement(actualIndex),
                      onToggleDescription: () => _toggleDescription(actualIndex),
                      isExpanded: _isExpanded[actualIndex],
                    );
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Add more item", style: TextFontStyle.textStyle16c121212Poppins400),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(Assets.icons.forward.path, width: 24.w, height: 24.h),
                  ),
                ],
              ),

              Divider(color: AppColors.cBDBDBD, height: 1.h),
              UIHelper.verticalSpace(20.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Subtotal", style: TextFontStyle.textStyle16c121212Poppins400),
                  Text("₹$subtotal", style: TextFontStyle.textStyle16c121212Poppins400),
                ],
              ),
              UIHelper.verticalSpace(10.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery", style: TextFontStyle.textStyle16c121212Poppins400),
                  Text("₹${deliveryCharge.toInt()}", style: TextFontStyle.textStyle16c121212Poppins400),
                ],
              ),
              UIHelper.verticalSpace(10.h),

              Divider(color: AppColors.cBDBDBD, height: 1.h),
              UIHelper.verticalSpace(16.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total (incl. VAT)", style: TextFontStyle.textStyle16c121212Poppins600),
                  Text("₹${subtotal + deliveryCharge.toInt()}", style: TextFontStyle.textStyle16c121212Poppins400),
                ],
              ),

              UIHelper.verticalSpace(35.h),

              const CustomButton(text: "Continue"),
            ],
          ),
        ),
      ),
    );
  }
}
