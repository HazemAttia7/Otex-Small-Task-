import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/category_list_tile.dart';

class CategoryActions extends StatelessWidget {
  const CategoryActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kPagePadding),
      child: Row(
        children: [
          const Expanded(child: CategoryListTile(icon: Icons.real_estate_agent, title: 'عقارات', subtitle: 'فلل للبيع',iconColor: Color(0xffF95B1C),)),
          Text(
            "تغيير",
            style: AppStyles.textStyle14.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primaryDark,
            ),
          ),
        ],
      ),
    );
  }
}
