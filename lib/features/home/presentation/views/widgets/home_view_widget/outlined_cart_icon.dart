import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/icons/otex_icons.dart';

class OutlinedCartIcon extends StatelessWidget {
  const OutlinedCartIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.sp, vertical: 4.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(
          color: Colors.black.withValues(alpha: .1),
          width: 1.sp,
        ),
      ),
      child: Icon(OtexIcons.cart_add, size: 18.sp),
    );
  }
}
