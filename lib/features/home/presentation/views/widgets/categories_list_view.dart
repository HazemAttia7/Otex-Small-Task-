import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/features/home/presentation/views/widgets/categories_list_view_item.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: kPagePadding),
      child: SizedBox(
        height: 41.h,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: CategoriesListViewItem(
              text: 'كل العروض',
              isSelected: selectedIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
