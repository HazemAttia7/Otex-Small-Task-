import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/core/icons/otex_icons.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';
import 'package:otex_app/core/widgets/custom_icon_text_row.dart';
import 'package:otex_app/features/home/presentation/views/widgets/product_actions_row.dart';
import 'package:otex_app/features/home/presentation/views/widgets/product_price_row.dart';
import 'package:otex_app/features/home/presentation/views/widgets/product_title_row.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.sp),
      child: Column(
        children: [
          const ProductTitleRow(),
          Gap(8.h),
          const ProductPriceRow(),
          Gap(8.h),
          CustomIconTextRow(
            icon: OtexIcons.fire_outlined,
            iconColor: AppColors.mutedColor,
            iconSize: 10.sp,
            text: "تم بيع 3.3k+",
            textStyle: AppStyles.textStyle10.copyWith(
              color: AppColors.mutedColor,
            ),
          ),
          Gap(30.h),
          const ProductActionsRow(),
        ],
      ),
    );
  }
}
