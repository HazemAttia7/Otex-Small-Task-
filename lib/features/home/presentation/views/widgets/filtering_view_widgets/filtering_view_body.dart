import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/category_section.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/filtering_view_header.dart';

class FilteringViewBody extends StatelessWidget {
  const FilteringViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Gap(25.h),
          const FilteringViewHeader(),
          Gap(32.h),
          const CategorySection(),
        ],
      ),
    );
  }
}
