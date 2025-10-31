import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/features/profile/presentation/views/widgets/plan_cards_sliver_list.dart';
import 'package:otex_app/features/profile/presentation/views/widgets/plans_support_section.dart';
import 'package:otex_app/features/profile/presentation/views/widgets/profile_view_header.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kPageHorizontalPadding),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 16.h, bottom: 20.h),
                child: const ProfileViewHeader(),
              ),
            ),
            const PlanCardSliverList(),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 8.sp, bottom: 16.sp),
                child:  const PlansSupportSection(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

