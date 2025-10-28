import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/utils/app_colors.dart';

class BottomNavItem extends StatelessWidget {
  final int index;
  final int currentIndex;
  final IconData icon;
  final String label;
  final ValueChanged<int> onTap;
  final Color unselectedColor;
  final Color selectedColor;

  const BottomNavItem({
    super.key,
    required this.index,
    required this.currentIndex,
    required this.icon,
    required this.label,
    required this.onTap,
    this.unselectedColor = AppColors.mutedColor,
    this.selectedColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = currentIndex == index;
    final isAddButton = index == 2;

    return GestureDetector(
      onTap: () => onTap(index),
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4.sp, horizontal: 8.sp),
        foregroundDecoration: isSelected
            ? BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black, width: 1.sp),
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(4.r),
                  bottomRight: Radius.circular(4.r),
                ),
              )
            : null,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 18.sp,
              color: isAddButton
                  ? const Color(0xff0062E2)
                  : (isSelected ? selectedColor : unselectedColor),
            ),
            SizedBox(height: 3.h),
            Text(
              label,
              style: TextStyle(
                fontSize: 10.sp,
                color: isAddButton
                    ? const Color(0xff0062E2)
                    : (isSelected ? selectedColor : unselectedColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
