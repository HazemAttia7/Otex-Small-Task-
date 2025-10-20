import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "اسكتشف العروض",
            style: AppStyles.textStyle16Medium.copyWith(color: Colors.black),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'الكل',
                style: AppStyles.textStyle16Bold.copyWith(
                  color: AppColors.mutedColor,
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: AppColors.mutedColor,
                size: 20.sp,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
