import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/core/icons/otex_icons.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';

class FilteringViewHeader extends StatelessWidget {
  const FilteringViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(OtexIcons.close_small, size: 10.sp),
        Gap(20.w),
        Text("فلترة", style: AppStyles.textStyle24),
        const Spacer(),
        Text(
          "رجوع للإفتراضي",
          style: AppStyles.textStyle16Bold.copyWith(color: AppColors.primary),
        ),
      ],
    );
  }
}
