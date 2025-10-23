import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_router.dart';
import 'package:otex_app/core/utils/app_styles.dart';

class HomeIconTextRow extends StatelessWidget {
  const HomeIconTextRow({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kFilteringView);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'الكل',
            style: AppStyles.textStyle16Bold.copyWith(
              color: AppColors.mutedColor,
            ),
          ),
          Icon(Icons.arrow_forward, color: AppColors.mutedColor, size: 20.sp),
        ],
      ),
    );
  }
}
