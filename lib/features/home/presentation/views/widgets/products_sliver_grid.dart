import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/features/home/presentation/views/widgets/products_sliver_grid_item.dart';

class ProductsSliverGrid extends StatelessWidget {
  const ProductsSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12.sp,
        crossAxisSpacing: 12.sp,
        childAspectRatio: 1 / 2.1,
      ),
      delegate: SliverChildBuilderDelegate((context, index) {
        return const ProductsSliverGridItem();
      }, childCount: 20),
    );
  }
}
