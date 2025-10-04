import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:webgenius/constants/text_font_style.dart';
import 'package:webgenius/gen/colors.gen.dart';
import 'package:webgenius/helper/ui_helper.dart';

class FileUploadSection extends StatelessWidget {
  final String title;
  final VoidCallback onUpload;

  const FileUploadSection({
    super.key,
    required this.title,
    required this.onUpload,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 10.h),
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius:  Radius.circular(12.r),
        dashPattern: [6, 4],
        color: AppColors.c6B7280,
        strokeWidth: 1,
        child: Container(
          width: double.infinity,
          height: 150.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.cloud_upload_outlined, size: 40, color: AppColors.cBFBFBF),
              UIHelper.verticalSpace(5.h),
              Text(
                title,
                style: TextFontStyle.textStyle12c595959Inter400,
              ),
              UIHelper.verticalSpace(12.h),
              ElevatedButton(
                onPressed: onUpload,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.cFFFFFF,
                  elevation: 0,
                  side: BorderSide(color: AppColors.cBFBFBF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  padding:  EdgeInsets.symmetric(horizontal: 24.h, vertical: 10.r),
                ),
                child:  Text('Choose File'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
