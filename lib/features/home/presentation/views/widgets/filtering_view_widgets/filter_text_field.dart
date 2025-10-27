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
  final String? Function(String?)? validator;

  const FilterTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.onChanged,
    this.keyboardType,
    this.suffixText,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      keyboardType: keyboardType,
      validator: validator,
      style: AppStyles.textStyle14.copyWith(color: AppColors.secondary),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppStyles.textStyle14.copyWith(color: AppColors.mutedColor),
        suffix: Padding(
          padding: EdgeInsets.only(right: 5.w),
          child: Text(
            suffixText ?? "",
            style: AppStyles.textStyle14.copyWith(color: AppColors.secondary),
          ),
        ),
        border: _buildBorder(),
        enabledBorder: _buildBorder(),
        focusedBorder: _buildBorder(),
        errorMaxLines: 3,
        isDense: true,
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(color: Colors.black.withValues(alpha: .1)),
    );
  }
}
