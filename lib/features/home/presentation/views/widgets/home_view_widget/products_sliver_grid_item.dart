import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/core/database/models/product_model.dart';
import 'package:otex_app/features/home/presentation/views/widgets/home_view_widget/product_details.dart';
import 'package:otex_app/features/home/presentation/views/widgets/home_view_widget/product_image.dart';

class ProductsSliverGridItem extends StatelessWidget {
  final Product product;
  const ProductsSliverGridItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black.withValues(alpha: .1),
          width: 1.sp,
        ),
        borderRadius: BorderRadius.circular(4.r),
      ),
      child: Column(
        children: [
          Expanded(child: ProductImage(imageUrl: product.imageUrl ?? "")),
          Gap(4.h),
          Expanded(child: ProductDetails(product: product)),
        ],
      ),
    );
  }
}
