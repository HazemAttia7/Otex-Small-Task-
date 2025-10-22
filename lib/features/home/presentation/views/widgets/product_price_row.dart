import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/database/models/product_model.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';

class ProductPriceRow extends StatelessWidget {
  final Product product;
  const ProductPriceRow({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "${product.getPriceAfterDiscount()}جم/",
                  style: AppStyles.textStyle14.copyWith(
                    color: AppColors.secondaryDark,
                  ),
                ),
                TextSpan(
                  text: product.price.toString(),
                  style: AppStyles.textStyle14.copyWith(
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
          ),
        ),
        Icon(Icons.favorite_border, size: 24.sp),
      ],
    );
  }
}
