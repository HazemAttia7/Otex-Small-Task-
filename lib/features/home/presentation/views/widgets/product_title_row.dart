import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/icons/otex_icons.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';

class ProductTitleRow extends StatelessWidget {
  const ProductTitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Text(
            "جاكيت من الصوف مناسب",
            style: AppStyles.textStyle14,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Icon(OtexIcons.percent, color: AppColors.secondaryDark, size: 20.sp),
      ],
    );
  }
}
