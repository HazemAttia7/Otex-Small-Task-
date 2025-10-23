import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/core/icons/otex_icons.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/category_actions.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/category_list_tile.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/section_header.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(sectionTitle: "الفئة"),
        Gap(12.h),
        const CategoryActions(),
        Gap(28.h),
        Divider(color: Colors.black.withValues(alpha: .1), thickness: 1.sp),
        Gap(20.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kPagePadding),
          child: Row(
            children: [
              const Expanded(
                child: CategoryListTile(
                  icon: OtexIcons.location_on,
                  title: 'مصر',
                  subtitle: "الموقع",
                ),
              ),
              Icon(OtexIcons.arrow_back, size: 13.sp),
            ],
          ),
        ),
        Gap(20.h),
        Divider(color: Colors.black.withValues(alpha: .1), thickness: 1.sp),
      ],
    );
  }
}
