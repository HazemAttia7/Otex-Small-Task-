import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/features/home/presentation/views/widgets/home_header.dart';
import 'package:otex_app/features/home/presentation/views/widgets/sub_categories_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 25.h),
          const HomeHeader(),
          SizedBox(height: 12.h),
          const SubCategoriesListView(),
          SizedBox(height: 33.h),
        ],
      ),
    );
  }
}
