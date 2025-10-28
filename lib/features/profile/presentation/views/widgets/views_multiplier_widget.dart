import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/utils/app_styles.dart';

class ViewsMultiplierWidget extends StatelessWidget {
  const ViewsMultiplierWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 16.sp, bottom: 9.sp),
          decoration: BoxDecoration(
            color: const Color(0xFFF6F9F6),
            border: Border(
              top: BorderSide(color: const Color(0xFF2E7D32), width: 1.sp),
              left: BorderSide(color: const Color(0xFF2E7D32), width: 1.sp),
              right: BorderSide(color: const Color(0xFF2E7D32), width: 1.sp),
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32.r),
              topRight: Radius.circular(32.r),
            ),
          ),
          child: Center(
            child: Text(
              "24",
              style: AppStyles.textStyle14.copyWith(
                fontWeight: FontWeight.bold,
                color: const Color(0xFF2E7D32),
              ),
            ),
          ),
        ),
        Text(
          "ضعف عدد المشاهدات",
          textAlign: TextAlign.center,
          style: AppStyles.textStyle12.copyWith(
            decoration: TextDecoration.underline,
            decorationThickness: 1.5.sp,
          ),
        ),
      ],
    );
  }
}
