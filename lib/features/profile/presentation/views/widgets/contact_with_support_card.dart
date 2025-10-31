import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';

class ContactWithSupoprtCard extends StatelessWidget {
  const ContactWithSupoprtCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8.sp),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black.withValues(alpha: .05),
          width: 1.sp,
        ),
        color: const Color(0xffF7F7F7),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "باقات مخصصة لك",
            style: AppStyles.textStyle14.copyWith(height: 1),
          ),
          Gap(4.h),
          Text(
            "تواصل معنا لأختيار الباقة المناسبة لك",
            style: AppStyles.textStyle12.copyWith(
              fontWeight: FontWeight.normal,
              height: 1,
            ),
          ),
          Gap(6.5.h),
          Text(
            "فريق المبيعات",
            style: AppStyles.textStyle16Bold.copyWith(
              color: AppColors.primary,
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}
