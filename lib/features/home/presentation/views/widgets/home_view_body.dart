import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/features/home/presentation/views/widgets/home_header.dart';
import 'package:otex_app/features/home/presentation/views/widgets/categories_list_view.dart';
import 'package:otex_app/features/home/presentation/views/widgets/news_banner.dart';
import 'package:otex_app/features/home/presentation/views/widgets/products_sliver_grid.dart';
import 'package:otex_app/features/home/presentation/views/widgets/sub_categories_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Gap(25.h),
                const HomeHeader(),
                Gap(12.h),
                const CategoriesListView(),
                Gap(33.h),
                const SubCategoriesListView(),
                Gap(33.h),
                const NewsBanner(),
                Gap(20.h),
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: kPagePadding),
            sliver: const ProductsSliverGrid(),
          ),
        ],
      ),
    );
  }
}
