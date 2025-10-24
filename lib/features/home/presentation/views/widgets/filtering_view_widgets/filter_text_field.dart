import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';

class FilterTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;
  final String? suffixText;

  const FilterTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.onChanged,
    this.keyboardType,
    this.suffixText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.sp, vertical: 4.sp),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black.withValues(alpha: .1),
          width: 1.sp,
        ),
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        keyboardType: keyboardType,
        style: AppStyles.textStyle14.copyWith(color: AppColors.secondary),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: AppStyles.textStyle14.copyWith(
            color: AppColors.mutedColor,
          ),
          border: InputBorder.none,
          isDense: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 6.sp,
            vertical: 8.sp,
          ),
          suffixText: suffixText,
          suffixStyle: AppStyles.textStyle14.copyWith(
            color: AppColors.secondary,
          ),
        ),
      ),
    );
  }
}
