import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/widgets/custom_error_widget.dart';
import 'package:otex_app/core/widgets/custom_loading_indicator.dart';
import 'package:otex_app/features/home/presentation/manager/products_cubit/products_cubit.dart';
import 'package:otex_app/features/home/presentation/views/widgets/products_sliver_grid_item.dart';

class ProductsSliverGrid extends StatelessWidget {
  const ProductsSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccess) {
          if (state.products.isEmpty) {
            return const SliverToBoxAdapter(
              child: CustomErrorWidget(errMessage: "لا يوجد منتجات"),
            );
          }
          return SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12.sp,
              crossAxisSpacing: 12.sp,
              childAspectRatio: 1 / 2,
            ),
            delegate: SliverChildBuilderDelegate((context, index) {
              return ProductsSliverGridItem(product: state.products[index]);
            }, childCount: state.products.length),
          );
        } else if (state is ProductsFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errMessage: state.errMessage),
          );
        } else {
          return const SliverToBoxAdapter(child: CustomLoadingIndicator());
        }
      },
    );
  }
}
