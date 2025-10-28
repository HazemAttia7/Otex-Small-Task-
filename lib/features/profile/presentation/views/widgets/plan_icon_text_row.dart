import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';

class PlanIconTextRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final String? subtitle;
  const PlanIconTextRow({
    super.key,
    required this.icon,
    required this.text,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18.sp),
        Gap(8.sp),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(text, style: AppStyles.textStyle14),
              if (subtitle != null)
                Text(
                  subtitle!,
                  style: AppStyles.textStyle14.copyWith(
                    color: AppColors.secondaryDark,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
