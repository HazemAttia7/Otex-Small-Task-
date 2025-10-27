import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/features/home/presentation/manager/categories_cubit/categories_cubit.dart';
import 'package:otex_app/features/home/presentation/manager/sub_categories_cubit/sub_categories_cubit.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/category_list_tile.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/change_category_and_sub_category_text.dart';

class CategoryActions extends StatelessWidget {
  const CategoryActions({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedCategory = BlocProvider.of<CategoriesCubit>(
      context,
    ).selectedCategory;
    final selectedSubCategory = BlocProvider.of<SubCategoriesCubit>(
      context,
    ).selectedSubCategory;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kPageHorizontalPadding),
      child: Row(
        children: [
          Expanded(
            child: CategoryListTile(
              icon: _getCategoryIcon(selectedCategory?.id ?? 0),
              title: selectedCategory?.name ?? "الكل",
              subtitle: selectedSubCategory?.name,
              iconColor: const Color(0xffF95B1C),
            ),
          ),
          const ChangeCategoryAndSubCategoryText(),
        ],
      ),
    );
  }

  IconData _getCategoryIcon(int categoryId) {
    switch (categoryId) {
      case 0:
        return Icons.category;
      case 1:
        return Icons.checkroom;
      case 2:
        return Icons.watch;
      case 3:
        return Icons.devices_other;
      case 4:
        return Icons.brush;
      case 5:
        return Icons.real_estate_agent;
      default:
        return Icons.category;
    }
  }
}
