import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/features/home/presentation/views/widgets/sub_categories_list_view_item.dart';

class SubCategoriesListView extends StatelessWidget {
  const SubCategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: SizedBox(
        height: 78.sp,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(left: 8.w),
            child: const SubCategoriesListViewItem(
              image: "assets/images/test.png",
              text: 'ساعات',
            ),
          ),
        ),
      ),
    );
  }
}
