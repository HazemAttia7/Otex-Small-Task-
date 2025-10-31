import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';
import 'package:otex_app/features/profile/presentation/views/widgets/tag_badge_painter.dart';

class PlanTagBadge extends StatelessWidget {
  final String text;
  const PlanTagBadge({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -21.sp,
      right: 0,
      child: ClipPath(
        clipper: TagBadgeClipPath(),
        child: Container(
          padding: EdgeInsets.only(
            left: 12.sp,
            right: 6.sp,
            top: 5.sp,
            bottom: 5.sp,
          ),
          color: const Color(0xffFFDBDB),
          child: Text(
            text,
            style: AppStyles.textStyle12.copyWith(
              color: AppColors.secondaryDark,
            ),
          ),
        ),
      ),
    );
  }
}
