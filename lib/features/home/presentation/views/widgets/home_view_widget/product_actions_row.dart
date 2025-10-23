import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/features/home/presentation/views/widgets/home_view_widget/company_badge.dart';
import 'package:otex_app/features/home/presentation/views/widgets/home_view_widget/outlined_cart_icon.dart';

class ProductActionsRow extends StatelessWidget {
  const ProductActionsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CompanyBadge(),
        const Spacer(),
        const OutlinedCartIcon(),
        Gap(12.sp),
        Image.asset("assets/images/tmg_holding_logo.png", height: 26.sp),
      ],
    );
  }
}
