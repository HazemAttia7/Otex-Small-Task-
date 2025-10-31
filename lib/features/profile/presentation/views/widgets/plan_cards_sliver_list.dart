import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/widgets/custom_loading_indicator.dart';
import 'package:otex_app/features/profile/presentation/manager/plan_cubit/plan_cubit.dart';
import 'package:otex_app/features/profile/presentation/views/widgets/plan_card.dart';

class PlanCardSliverList extends StatelessWidget {
  const PlanCardSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlanCubit, PlanState>(
      builder: (context, state) {
        if (state is PlanSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 24.h),
                child: PlanCard(plan: state.plans[index]),
              );
            }, childCount: state.plans.length),
          );
        } else if (state is PlanFailure) {
          return SliverToBoxAdapter(child: Text(state.errMessage));
        } else {
          return const SliverToBoxAdapter(child: CustomLoadingIndicator());
        }
      },
    );
  }
}
