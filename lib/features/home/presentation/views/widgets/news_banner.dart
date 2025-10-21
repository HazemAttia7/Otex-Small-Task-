import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/core/icons/otex_icons.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';
import 'package:otex_app/core/utils/constants.dart';

class NewsBanner extends StatelessWidget {
  const NewsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kPagePadding),
      child: Container(
        padding: EdgeInsetsGeometry.symmetric(
          vertical: 10.sp,
          horizontal: 12.sp,
        ),
        foregroundDecoration: BoxDecoration(
          color: AppColors.secondary.withValues(alpha: .05),
        ),
        child: Row(
          children: [
            Gap(4.sp),
            Icon(OtexIcons.check, color: const Color(0xff3A813F), size: 11.sp),
            Gap(8.sp),
            Text(
              "شحن مجاني",
              style: AppStyles.textStyle12.copyWith(
                fontWeight: FontWeight.normal,
                color: const Color(0xff3A813F),
              ),
            ),
            const Spacer(),
            Text(
              "لأى عرض تطلبه دلوقتى !",
              style: AppStyles.textStyle12.copyWith(
                fontWeight: FontWeight.normal,
                color: const Color(0xff3A813F),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
