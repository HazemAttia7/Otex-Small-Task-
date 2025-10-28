import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/features/profile/presentation/views/widgets/plan_content.dart';

class PlanCard extends StatefulWidget {
  const PlanCard({super.key});

  @override
  State<PlanCard> createState() => _PlanCardState();
}

class _PlanCardState extends State<PlanCard> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      foregroundDecoration: BoxDecoration(
        border: Border.all(
          color: Colors.black.withValues(alpha: .1),
          width: 1.sp,
        ),
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: PlanContent(
        value: value,
        onChanged: (bool? value) {
          setState(() {
            this.value = value ?? false;
          });
        },
      ),
    );
  }
}
