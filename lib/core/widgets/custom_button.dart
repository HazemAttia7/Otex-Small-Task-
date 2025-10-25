import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';
import 'package:otex_app/core/utils/constants.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  const CustomButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kPageHorizontalPadding),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 12.5.sp),
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(32.r),
          ),
          child: Center(
            child: Text(
              "شاهد 10,000+ نتائج",
              style: AppStyles.textStyle16Bold.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
