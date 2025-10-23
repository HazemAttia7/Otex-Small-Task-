import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/core/database/models/product_model.dart';
import 'package:otex_app/core/icons/otex_icons.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';
import 'package:otex_app/core/widgets/custom_icon_text_row.dart';
import 'package:otex_app/features/home/presentation/views/widgets/home_view_widget/product_actions_row.dart';
import 'package:otex_app/features/home/presentation/views/widgets/home_view_widget/product_price_row.dart';
import 'package:otex_app/features/home/presentation/views/widgets/home_view_widget/product_title_row.dart';

class ProductDetails extends StatelessWidget {
  final Product product;
  const ProductDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.sp),
      child: Column(
        children: [
          ProductTitleRow(title: product.name),
          Gap(8.h),
          ProductPriceRow(product: product),
          Gap(8.h),
          CustomIconTextRow(
            icon: OtexIcons.fire_outlined,
            iconColor: AppColors.mutedColor,
            iconSize: 10.sp,
            text: _formatSoldCount(),
            textStyle: AppStyles.textStyle10.copyWith(
              color: AppColors.mutedColor,
            ),
          ),
          const Spacer(),
          const ProductActionsRow(),
        ],
      ),
    );
  }

  String _formatSoldCount() {
    if (product.soldCount == 0) return "لم يتم البيع";

    if (product.soldCount < 1000) {
      return "تم بيع ${product.soldCount}";
    }

    if (product.soldCount < 1000000) {
      double kCount = product.soldCount / 1000;
      String formatted = kCount < 10
          ? kCount.toStringAsFixed(1)
          : kCount.toStringAsFixed(0);

      bool hasRemainder = product.soldCount % 100 != 0;

      return "تم بيع ${formatted}k${hasRemainder ? '+' : ''}";
    }

    if (product.soldCount < 1000000000) {
      double mCount = product.soldCount / 1000000;
      String formatted = mCount < 10
          ? mCount.toStringAsFixed(1)
          : mCount.toStringAsFixed(0);

      bool hasRemainder = product.soldCount % 100000 != 0;

      return "تم بيع ${formatted}M${hasRemainder ? '+' : ''}";
    }

    double bCount = product.soldCount / 1000000000;
    String formatted = bCount < 10
        ? bCount.toStringAsFixed(1)
        : bCount.toStringAsFixed(0);
    bool hasRemainder = product.soldCount % 100000000 != 0;

    return "تم بيع ${formatted}B${hasRemainder ? '+' : ''}";
  }
}
