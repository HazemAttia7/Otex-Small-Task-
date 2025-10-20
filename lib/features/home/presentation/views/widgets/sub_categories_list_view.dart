import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/features/home/presentation/views/widgets/sub_categories_list_view_item.dart';

class SubCategoriesListView extends StatefulWidget {
  const SubCategoriesListView({super.key});

  @override
  State<SubCategoriesListView> createState() => _SubCategoriesListViewState();
}

class _SubCategoriesListViewState extends State<SubCategoriesListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: SizedBox(
        height: 41.h,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: SubCategoriesListViewItem(
              text: 'كل العروض',
              isSelected: selectedIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
