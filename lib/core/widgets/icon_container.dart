import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconContainer extends StatelessWidget {
  final IconData icon;
  final Color backColor, iconColor;
  final double? iconSize, padding;
  const IconContainer({
    super.key,
    required this.icon,
    required this.backColor,
    required this.iconColor,
    this.iconSize,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 10.sp),
      decoration: BoxDecoration(shape: BoxShape.circle, color: backColor),
      child: Icon(icon, color: iconColor, size: iconSize ?? 18.sp),
    );
  }
}
