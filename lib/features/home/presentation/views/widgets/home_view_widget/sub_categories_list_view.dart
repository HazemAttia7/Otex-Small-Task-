import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/database/models/sub_category_model.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/core/widgets/custom_error_widget.dart';
import 'package:otex_app/core/widgets/custom_loading_indicator.dart';
import 'package:otex_app/features/home/presentation/manager/products_cubit/products_cubit.dart';
import 'package:otex_app/features/home/presentation/manager/sub_categories_cubit/sub_categories_cubit.dart';
import 'package:otex_app/features/home/presentation/views/widgets/home_view_widget/sub_categories_list_view_item.dart';

class SubCategoriesListView extends StatefulWidget {
  const SubCategoriesListView({super.key});

  @override
  State<SubCategoriesListView> createState() => _SubCategoriesListViewState();
}

class _SubCategoriesListViewState extends State<SubCategoriesListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubCategoriesCubit, SubCategoriesState>(
      builder: (context, state) {
        if (state is SubCategoriesSuccess) {
          if (state.subCategories.isEmpty) {
            return const CustomErrorWidget(errMessage: "لا يوجد أقسام فرعية");
          }
          final cubit = context.read<SubCategoriesCubit>();
          return Padding(
            padding: EdgeInsets.only(right: kPageHorizontalPadding),
            child: SizedBox(
              height: 78.sp,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.subCategories.length,
                itemBuilder: (context, index) {
                  final SubCategory subCategory = state.subCategories[index];
                  return Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: SubCategoriesListViewItem(
                      subCategory: subCategory,
                      isSelected: cubit.selectedIndex == index,
                      onTap: () {
                        if (cubit.selectedIndex != index) {
                          setState(() {
                            cubit.selectedIndex = index;
                          });
                          cubit.selectedIndex == -1
                              ? BlocProvider.of<SubCategoriesCubit>(
                                  context,
                                ).selectSubCategory(null)
                              : BlocProvider.of<SubCategoriesCubit>(
                                  context,
                                ).selectSubCategory(state.subCategories[index]);
                          BlocProvider.of<ProductsCubit>(
                            context,
                          ).fetchProductsBySubCategory(
                            subCategoryId: subCategory.id!,
                          );
                        }
                      },
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is SubCategoriesFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
