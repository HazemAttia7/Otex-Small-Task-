import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/database/models/category_model.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';

class CategoriesListViewItem extends StatelessWidget {
  final Category category;
  final bool isSelected;
  final VoidCallback onTap;
  const CategoriesListViewItem({
    super.key,
    this.isSelected = false,
    required this.category, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12.sp),
        foregroundDecoration: BoxDecoration(
          border: Border.all(
            color: Colors.black.withValues(alpha: .1),
            width: 1.sp,
          ),
          color: isSelected
              ? AppColors.secondary.withValues(alpha: .05)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: Text(
          category.name,
          style: AppStyles.textStyle14.copyWith(
            color: isSelected ? AppColors.secondary : AppColors.mutedColor,
          ),
        ),
      ),
    );
  }
}
