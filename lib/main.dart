import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webgenius/fetures/auth/presentation/signin_screen.dart';
import 'package:webgenius/fetures/vendor_profile/presentation/vendor_profile_screen.dart';

import 'app/app.dart';

void main() {
  runApp(
        Provider(
          create: (context) => VendorProfileScreen(),
          child: MyApp(),
        )
      );
}
