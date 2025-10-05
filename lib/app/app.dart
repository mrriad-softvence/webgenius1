import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webgenius/fetures/login_screen/presentation/login_screen.dart';
import 'package:webgenius/fetures/product_details/presentation/product_details_screen.dart';
import 'package:webgenius/fetures/vendor_profile/presentation/vendor_profile_screen.dart';
import '../fetures/mycart/presentation/mycart_screen.dart';
import '../fetures/signup/presentation/signup_screen1.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'WebGenius',
          home: SignupScreen1(),
          routes: <String, WidgetBuilder>{
            'vendor':(context)=>VendorProfileScreen(),
            'productDtails':(context)=> ProductDetailsScreen()
          },
        );
      },
    );
  }
}
