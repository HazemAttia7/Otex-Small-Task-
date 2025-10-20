import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/utils/app_colors.dart';

abstract class AppStyles {
  static TextStyle textStyle10 = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.normal,
  );

  static TextStyle textStyle12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle textStyle14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle textStyle16Bold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle textStyle16Medium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
  );

  static TextStyle textStyle24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
  );
}
