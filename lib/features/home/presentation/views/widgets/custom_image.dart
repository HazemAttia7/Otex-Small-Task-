import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 73.sp,
      height: 56.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        color: Colors.black.withValues(alpha: .1),
      ),
      child: Center(
        child: Image.asset(image, height: 45.sp, fit: BoxFit.contain),
      ),
    );
  }
}
