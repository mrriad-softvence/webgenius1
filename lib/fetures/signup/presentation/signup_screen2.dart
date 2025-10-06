import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webgenius/common_widgets/custom_button.dart';
import 'package:webgenius/fetures/login_screen/presentation/login_screen.dart';
import 'package:webgenius/fetures/signup/presentation/signup_screen1.dart';
import 'package:webgenius/fetures/signup/presentation/signup_screen3.dart';
import 'package:webgenius/fetures/signup/presentation/widgets/collapsible_upload_field.dart';
import 'package:webgenius/fetures/signup/presentation/widgets/custom_checkbox.dart';
import 'package:webgenius/fetures/signup/presentation/widgets/custom_dropdown.dart';
import 'package:webgenius/fetures/signup/presentation/widgets/custom_signup_button.dart';
import 'package:webgenius/fetures/signup/presentation/widgets/file_upload_section.dart';
import 'package:webgenius/fetures/signup/presentation/widgets/step_procss_indicator.dart';
import 'package:webgenius/helper/ui_helper.dart';

import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';

class SignupScreen2 extends StatefulWidget {
  const SignupScreen2({super.key});

  @override
  State<SignupScreen2> createState() => _SignupScreen2State();
}

class _SignupScreen2State extends State<SignupScreen2> {
  // Form state
  String? selectedVehicle;
  String? activeUploadField;
  bool agreeToTerms = false;
  int currentStep = 2;

  final List<String> vehicleTypes = ['Motorcycle', 'Bicyle', 'Scooter', 'Car'];

  void _toggleUploadField(String fieldName) {
    setState(() {
      activeUploadField = activeUploadField == fieldName ? null : fieldName;
    });
  }

  void _handleFileUpload() {
    // TODO: Implement file picker logic
    print('Upload file for: $activeUploadField');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.allPrimaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UIHelper.verticalSpace(60.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Assets.icons.tiffynLogo.path,
                    height: 36.h,
                    width: 36.w,
                  ),
                  UIHelper.horizontalSpace(12),
                  Text(
                    "tiffyn",
                    style: TextFontStyle.textStyle24c000000Inter600,
                  ),
                ],
              ),

              UIHelper.verticalSpace(40.h),

              Text(
                "Become a Delivery  Partner",
                style: TextFontStyle.textStyle18c141414Inter600,
              ),
              UIHelper.verticalSpace(12.h),
              Text(
                "Grow your business on our platform",
                style: TextFontStyle.textStyle12c595959Inter500,
              ),
              UIHelper.verticalSpace(16.h),

              // Step Progress Indicator
              StepProgressIndicator(
                currentStep: currentStep,
                totalSteps: 3,
                activeColor: AppColors.cFF2626,
                inactiveColor: AppColors.cE5E7EB,
              ),

              UIHelper.verticalSpace(16.h),

              Text("Vehicle & Location",style: TextFontStyle.textStyle16c141414Inter600,),
              UIHelper.verticalSpace(16.h),
              // Vehicle Type Dropdown
              CustomDropdown(
                label: 'Vehicle Type',
                hint: 'Select your vehicle type',
                value: selectedVehicle,
                items: vehicleTypes,
                onChanged: (value) => setState(() => selectedVehicle = value),
              ),
              UIHelper.verticalSpace(16.h),

              // Aadhar Card Field
              CollapsibleUploadField(
                label: 'Aadhar card',
                isExpanded: activeUploadField == 'aadhar',
                onTap: () => _toggleUploadField('aadhar'),
              ),
              if (activeUploadField == 'aadhar')
                FileUploadSection(
                  title: _getUploadTitle(),
                  onUpload: _handleFileUpload,
                ),
              UIHelper.verticalSpace(16.h),

              // Driving License Field
              CollapsibleUploadField(
                label: 'Driving License',
                isExpanded: activeUploadField == 'license',
                onTap: () => _toggleUploadField('license'),
              ),
              if (activeUploadField == 'license')
                FileUploadSection(
                  title: _getUploadTitle(),
                  onUpload: _handleFileUpload,
                ),
              UIHelper.verticalSpace(16.h),

              CollapsibleUploadField(
                label: 'Profile Picture (Optional)',
                isExpanded: activeUploadField == 'profile',
                onTap: () => _toggleUploadField('profile'),
              ),
              if (activeUploadField == 'profile')
                FileUploadSection(
                  title: _getUploadTitle(),
                  onUpload: _handleFileUpload,
                ),
              UIHelper.verticalSpace(16),

              // Terms and Conditions
              CustomCheckbox(
                value: agreeToTerms,
                label: 'I agree to the Terms of Service and Privacy Policy',
                onChanged: (value) => setState(() => agreeToTerms = value),
              ),
              
              UIHelper.verticalSpace(16.h),

              Row(
                children: [
                  Expanded(
                    child: CustomSignupButton(
                      text: "Previous",
                      isFilled: false,
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  UIHelper.horizontalSpace(30.w),
                  Expanded(
                    child: CustomSignupButton(
                      text: "Create Account",
                      isFilled: true,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupScreen3()),
                        );
                      },
                    ),
                  ),
                ],
              ),

              UIHelper.verticalSpace(16.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextFontStyle.textStyle12c595959Inter500,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Log in",
                      style: TextFontStyle.textStyle12cFF1414Inter500,
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

  String _getUploadTitle() {
    switch (activeUploadField) {
      case 'aadhar':
        return 'Upload your Aadhar card';
      case 'license':
        return 'Upload your Driving License';
      case 'profile':
        return 'Upload your profile picture';
      default:
        return '';
    }
  }
}
