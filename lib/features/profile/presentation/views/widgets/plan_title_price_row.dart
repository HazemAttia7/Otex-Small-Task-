import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';
import 'package:otex_app/features/profile/presentation/views/widgets/custom_check_box.dart';

class PlanTitlePriceRow extends StatelessWidget {
  const PlanTitlePriceRow({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final bool value;
  final Function(bool? value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckbox(
          value: value,
          onChanged: onChanged,
          text: 'أساسية',
          baseColor: Colors.black,
          themeColor: AppColors.primaryDark,
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        const Spacer(),
        Text(
          "3,000ج.م",
          style: AppStyles.textStyle16Bold.copyWith(
            color: AppColors.secondaryDark,
            decoration: TextDecoration.underline,
            decorationColor: AppColors.secondary,
            decorationThickness: 1.5.sp,
          ),
        ),
      ],
    );
  }
}
