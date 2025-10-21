import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/features/home/presentation/views/widgets/product_details.dart';
import 'package:otex_app/features/home/presentation/views/widgets/product_image.dart';

class ProductsSliverGridItem extends StatelessWidget {
  const ProductsSliverGridItem({super.key});

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
        children: [const ProductImage(), Gap(4.h), const ProductDetails()],
      ),
    );
  }
}
