import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_router.dart';
import 'package:otex_app/core/utils/app_styles.dart';
import 'package:otex_app/features/home/presentation/manager/categories_cubit/categories_cubit.dart';
import 'package:otex_app/features/home/presentation/manager/sub_categories_cubit/sub_categories_cubit.dart';

class HomeIconTextRow extends StatelessWidget {
  const HomeIconTextRow({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final selectedCategory = BlocProvider.of<CategoriesCubit>(
          context,
        ).selectedCategory;
        final selectedSubCategory = BlocProvider.of<SubCategoriesCubit>(
          context,
        ).selectedSubCategory;

        GoRouter.of(context).push(
          AppRouter.kFilteringView,
          extra: {'categselectedCategoryory': selectedCategory, 'selectedSubCategory': selectedSubCategory},
        );
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'الكل',
            style: AppStyles.textStyle16Bold.copyWith(
              color: AppColors.mutedColor,
            ),
          ),
          Icon(Icons.arrow_forward, color: AppColors.mutedColor, size: 20.sp),
        ],
      ),
    );
  }
}
