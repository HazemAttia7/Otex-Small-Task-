import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';

class CategoryListTile extends StatelessWidget {
  final IconData icon;
  final Color? iconColor;
  final String title;
  final String? subtitle;
  const CategoryListTile({
    super.key,
    required this.icon,
    this.iconColor,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(10.sp),
          child: Icon(icon, color: iconColor ?? Colors.black, size: 24.sp),
        ),
        Gap(17.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppStyles.textStyle14.copyWith(height: 1)),
              if (subtitle != null)
                Text(
                  subtitle!,
                  style: AppStyles.textStyle12.copyWith(
                    color: AppColors.mutedColor,
                    fontWeight: FontWeight.normal,
                    height: 1,
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
