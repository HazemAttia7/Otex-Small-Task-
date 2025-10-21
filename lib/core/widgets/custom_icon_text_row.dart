import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class CustomIconTextRow extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final String text;
  final TextStyle textStyle;
  const CustomIconTextRow({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.iconSize,
    required this.text,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: iconSize),
        Gap(8.sp),
        Text(text, style: textStyle),
      ],
    );
  }
}
