import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/core/icons/otex_icons.dart';
import 'package:otex_app/features/profile/presentation/views/widgets/plan_icon_text_row.dart';

class MainFeaturesColumn extends StatelessWidget {
  const MainFeaturesColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PlanIconTextRow(
          icon: OtexIcons.hour,
          text: "صلاحية الأعلان 30 يوم",
        ),
        Gap(8.h),
        const PlanIconTextRow(
          icon: OtexIcons.rocket,
          text: "رفع لأعلى القائمة كل 2 يوم",
        ),
        Gap(8.h),
        const PlanIconTextRow(
          icon: OtexIcons.pin,
          text: "تثبيت فى مقاول صحى",
          subtitle: "( خلال ال48 ساعة القادمة )",
        ),
        Gap(8.h),
        const PlanIconTextRow(
          icon: OtexIcons.earth,
          text: "ظهور فى كل محافظات مصر",
        ),
        Gap(8.h),
        const PlanIconTextRow(icon: OtexIcons.award, text: "أعلان مميز"),
        const PlanIconTextRow(
          icon: OtexIcons.pin,
          text: "تثبيت فى مقاول صحى في الجهراء",
        ),
      ],
    );
  }
}
