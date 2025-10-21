import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';

class ProductPriceRow extends StatelessWidget {
  const ProductPriceRow({super.key});

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
                  text: "32,000,000جم/",
                  style: AppStyles.textStyle14.copyWith(
                    color: AppColors.secondaryDark,
                  ),
                ),
                TextSpan(
                  text: "66,000,000",
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
