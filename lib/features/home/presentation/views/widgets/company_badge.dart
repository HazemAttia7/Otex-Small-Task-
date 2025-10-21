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
        ),
        Positioned(
          top: -4.sp,
          right: -8.sp,
          child: IconContainer(
            icon: OtexIcons.check,
            backColor: AppColors.primary,
            iconColor: Colors.white,
            iconSize: 8.sp,
            padding: 5.sp,
          ),
        ),
      ],
    );
  }
}
