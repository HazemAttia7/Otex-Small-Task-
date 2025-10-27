import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:otex_app/core/icons/otex_icons.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';
import 'package:otex_app/core/utils/constants.dart';

class FilteringViewHeader extends StatelessWidget {
  final VoidCallback onResetFilter;
  const FilteringViewHeader({super.key, required this.onResetFilter});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kPageHorizontalPadding),
      child: Row(
        children: [
          IconButton(
            icon: Icon(OtexIcons.close_small, size: 10.sp),
            onPressed: () {
              GoRouter.of(context).pop();
            },
          ),
          Text("فلترة", style: AppStyles.textStyle24),
          const Spacer(),
          GestureDetector(
            onTap: onResetFilter,
            child: Text(
              "رجوع للإفتراضي",
              style: AppStyles.textStyle16Bold.copyWith(
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
