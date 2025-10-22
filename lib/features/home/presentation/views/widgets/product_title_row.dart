import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/icons/otex_icons.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';

class ProductTitleRow extends StatelessWidget {
  final String title;
  const ProductTitleRow({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            title,
            style: AppStyles.textStyle14,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Icon(OtexIcons.percent, color: AppColors.secondaryDark, size: 20.sp),
      ],
    );
  }
}
