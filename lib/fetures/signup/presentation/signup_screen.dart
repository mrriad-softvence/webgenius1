import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webgenius/fetures/signup/presentation/widgets/collapsible_upload_field.dart';
import 'package:webgenius/fetures/signup/presentation/widgets/custom_checkbox.dart';
import 'package:webgenius/fetures/signup/presentation/widgets/custom_dropdown.dart';
import 'package:webgenius/fetures/signup/presentation/widgets/file_upload_section.dart';
import 'package:webgenius/helper/ui_helper.dart';

import '../../../gen/colors.gen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // Form state
  String? selectedVehicle;
  String? activeUploadField;
  bool agreeToTerms = false;

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
      appBar: AppBar(title: const Text('Vehicle & Location')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
