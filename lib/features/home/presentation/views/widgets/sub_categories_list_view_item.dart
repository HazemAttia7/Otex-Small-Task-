import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/core/database/models/sub_category_model.dart';
import 'package:otex_app/core/utils/app_styles.dart';
import 'package:otex_app/features/home/presentation/views/widgets/sub_category_image.dart';

class SubCategoriesListViewItem extends StatelessWidget {
  final SubCategory subCategory;
  final bool isSelected;
  final VoidCallback onTap;
  const SubCategoriesListViewItem({
    super.key,
    required this.subCategory,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SubCategoryImage(image: subCategory.imageUrl ?? "", isSelected: isSelected,),
          Gap(8.h),
          Flexible(
            child: Text(
              subCategory.name,
              style: AppStyles.textStyle12.copyWith(height: 1),
            ),
          ),
        ],
      ),
    );
  }
}
