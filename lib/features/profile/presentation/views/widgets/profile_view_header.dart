import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/core/icons/otex_icons.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';

class ProfileViewHeader extends StatelessWidget {
  const ProfileViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Padding(
                padding: EdgeInsets.all(8.sp),
                child: Icon(OtexIcons.arrow_forward, size: 12.sp),
              ),
            ),
            Gap(12.w),
            Text(
              "أختر الباقات اللى تناسبك",
              style: AppStyles.textStyle24.copyWith(height: 1),
            ),
          ],
        ),
        Gap(13.5.h),
        Text(
          "أختار من باقات التمييز بل أسفل اللى تناسب أحتياجاتك",
          style: TextStyle(
            color: AppColors.mutedColor,
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
