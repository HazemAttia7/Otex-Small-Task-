import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/core/widgets/custom_error_widget.dart';
import 'package:otex_app/core/widgets/custom_loading_indicator.dart';
import 'package:otex_app/features/home/presentation/manager/products_cubit/products_cubit.dart';
import 'package:otex_app/features/home/presentation/manager/sub_categories_cubit/sub_categories_cubit.dart';
import 'package:otex_app/features/home/presentation/views/widgets/sub_categories_list_view_item.dart';

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
            padding: EdgeInsets.only(right: kPagePadding),
            child: SizedBox(
              height: 78.sp,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.subCategories.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: SubCategoriesListViewItem(
                    subCategory: state.subCategories[index],
                    isSelected: cubit.selectedIndex == index,
                    onTap: () {
                      setState(() {
                        cubit.selectedIndex = index;
                        BlocProvider.of<ProductsCubit>(
                          context,
                        ).fetchProductsBySubCategory(
                          subCategoryId: state.subCategories[index].id!,
                        );
                      });
                    },
                  ),
                ),
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
