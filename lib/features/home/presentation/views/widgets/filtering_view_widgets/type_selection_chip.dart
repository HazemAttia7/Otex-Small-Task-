import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';

class TypeSelectionChip extends StatelessWidget {
  final String typeText;
  final VoidCallback onTap;
  final bool isSelected;
  const TypeSelectionChip({
    super.key,
    this.isSelected = false,
    required this.typeText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 11.5.sp),
        foregroundDecoration: BoxDecoration(
          border: Border.all(
            color: isSelected
                ? AppColors.primary
                : Colors.black.withValues(alpha: .1),
            width: isSelected ? 2.sp : 1.sp,
          ),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30.r),
        ),
        child: Text(
          typeText,
          style: AppStyles.textStyle14.copyWith(
            color: isSelected ? AppColors.primary : AppColors.mutedColor,
          ),
        ),
      ),
    );
  }
}
