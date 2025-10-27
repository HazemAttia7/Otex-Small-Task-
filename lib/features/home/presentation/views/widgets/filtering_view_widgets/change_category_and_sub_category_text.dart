import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';

class ChangeCategoryAndSubCategoryText extends StatelessWidget {
  const ChangeCategoryAndSubCategoryText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: GestureDetector(
        onTap: () {
          // show dialog to change the category and sub category
        },
        child: Text(
          "تغيير",
          style: AppStyles.textStyle14.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.primaryDark,
          ),
        ),
      ),
    );
  }
}
