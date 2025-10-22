import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/core/widgets/custom_error_widget.dart';
import 'package:otex_app/core/widgets/custom_loading_indicator.dart';
import 'package:otex_app/features/home/presentation/manager/categories_cubit/categories_cubit.dart';
import 'package:otex_app/features/home/presentation/manager/products_cubit/products_cubit.dart';
import 'package:otex_app/features/home/presentation/manager/sub_categories_cubit/sub_categories_cubit.dart';
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
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      builder: (context, state) {
        if (state is CategoriesSuccess) {
          return Padding(
            padding: EdgeInsets.only(right: kPagePadding),
            child: SizedBox(
              height: 41.sp,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.categories.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: CategoriesListViewItem(
                    category: state.categories[index],
                    isSelected: selectedIndex == index,
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                        context.read<SubCategoriesCubit>().resetSelectedIndex();
                        BlocProvider.of<ProductsCubit>(
                          context,
                        ).fetchProductsByCategory(
                          categoryId: state.categories[index].id!,
                        );
                        BlocProvider.of<SubCategoriesCubit>(
                          context,
                        ).fetchSubCategoriesByCategory(
                          categoryId: state.categories[index].id!,
                        );
                      });
                    },
                  ),
                ),
              ),
            ),
          );
        } else if (state is CategoriesFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
