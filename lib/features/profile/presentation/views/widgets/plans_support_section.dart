import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:otex_app/features/profile/presentation/views/widgets/contact_with_support_card.dart';
import 'package:otex_app/features/profile/presentation/views/widgets/next_button.dart';

class PlansSupportSection extends StatelessWidget {
  const PlansSupportSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ContactWithSupoprtCard(),
        Gap(78.h),
        NextButton(
          onTap: () {
            // go to next screen (Payment Screen)
            GoRouter.of(context).pop();
          },
        ),
      ],
    );
  }
}
