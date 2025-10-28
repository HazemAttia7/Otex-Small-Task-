import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/icons/otex_icons.dart';
import 'package:otex_app/features/main/presentation/views/widgets/bottom_nav_bar_item.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey.withValues(alpha: 0.3), blurRadius: 10),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavItem(
            index: 0,
            icon: OtexIcons.home,
            label: 'الرئيسية',
            currentIndex: currentIndex,
            onTap: onTap,
          ),
          BottomNavItem(
            index: 1,
            icon: OtexIcons.chat,
            label: 'محادثة',
            currentIndex: currentIndex,
            onTap: onTap,
          ),
          BottomNavItem(
            index: 2,
            icon: OtexIcons.add_box,
            label: 'أضف إعلان',
            currentIndex: currentIndex,
            onTap: onTap,
            selectedColor: const Color(0xff0062E2),
            unselectedColor: const Color(0xff0062E2),
          ),
          BottomNavItem(
            index: 3,
            icon: OtexIcons.dataset,
            label: 'إعلاناتي',
            currentIndex: currentIndex,
            onTap: onTap,
          ),
          BottomNavItem(
            index: 4,
            icon: OtexIcons.account_circle,
            label: 'حسابي',
            currentIndex: currentIndex,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
