import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/icons/otex_icons.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/widgets/icon_container.dart';

class CompanyBadge extends StatelessWidget {
  const CompanyBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        IconContainer(
          icon: OtexIcons.company,
          backColor: AppColors.primary.withValues(alpha: .1),
          iconColor: AppColors.primary,
          iconSize: 13.sp,
          padding: EdgeInsets.symmetric(horizontal: 6.3.sp, vertical: 7),
        ),
        Positioned(
          top: -2.sp,
          right: -5.sp,
          child: IconContainer(
            icon: OtexIcons.check,
            backColor: AppColors.primary,
            iconColor: Colors.white,
            iconSize: 7.sp,
            padding: EdgeInsets.all(2.sp),
          ),
        ),
      ],
    );
  }
}
