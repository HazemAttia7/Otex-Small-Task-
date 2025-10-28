import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/core/widgets/custom_divider.dart';
import 'package:otex_app/features/profile/presentation/views/widgets/plan_features.dart';
import 'package:otex_app/features/profile/presentation/views/widgets/plan_title_price_row.dart';

class PlanContent extends StatelessWidget {
  final Function(bool? value) onChanged;
  final bool value;
  const PlanContent({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlanTitlePriceRow(value: value, onChanged: onChanged),
        Gap(12.h),
        const CustomDivider(),
        Gap(12.h),
        const PlanFeatures(),
      ],
    );
  }
}
