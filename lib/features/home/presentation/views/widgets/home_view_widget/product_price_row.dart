import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/database/models/product_model.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';
import 'package:otex_app/core/utils/methods.dart';

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
                  text: formatPrice(product.getPriceAfterDiscount()),
                  style: AppStyles.textStyle14.copyWith(
                    color: AppColors.secondaryDark,
                  ),
                ),
                if (product.discountPercent != 0)
                  TextSpan(
                    text: "/",
                    style: AppStyles.textStyle14.copyWith(
                      color: AppColors.secondaryDark,
                    ),
                  ),
                if (product.discountPercent != 0)
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
