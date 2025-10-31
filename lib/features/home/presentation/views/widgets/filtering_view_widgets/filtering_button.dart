import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/utils/app_colors.dart';
import 'package:otex_app/core/utils/app_styles.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/core/widgets/custom_error_widget.dart';
import 'package:otex_app/core/widgets/custom_loading_indicator.dart';
import 'package:otex_app/features/home/presentation/manager/filtering_cubit/filtering_cubit.dart';

class FilteringButton extends StatelessWidget {
  final VoidCallback onTap;
  const FilteringButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilteringCubit, FilteringState>(
      builder: (context, state) {
        if (state is FilteringCountSuccess || state is FilteringLoading) {
          return GestureDetector(
            onTap: onTap,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kPageHorizontalPadding),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.sp,
                  vertical: 12.5.sp,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(32.r),
                ),
                child: (state is FilteringCountSuccess)
                    ? Center(
                        child: Text(
                          _formatSoldCount(state.filteredProductsCount),
                          style: AppStyles.textStyle16Bold.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      )
                    : const Center(
                        child: CircularProgressIndicator(color: Colors.white),
                      ),
              ),
            ),
          );
        }
        if (state is FilteringFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}

String _formatSoldCount(int resultsCount) {
  if (resultsCount == 0) return "لا يوجد نتائج";

  if (resultsCount < 1000) {
    return "شاهد $resultsCount نتائج";
  }

  if (resultsCount < 1000000) {
    double kCount = resultsCount / 1000;
    String formatted = kCount < 10
        ? kCount.toStringAsFixed(1)
        : kCount.toStringAsFixed(0);

    bool hasRemainder = resultsCount % 100 != 0;

    return "شاهد ${formatted}k${hasRemainder ? '+' : ''} نتائج";
  }

  if (resultsCount < 1000000000) {
    double mCount = resultsCount / 1000000;
    String formatted = mCount < 10
        ? mCount.toStringAsFixed(1)
        : mCount.toStringAsFixed(0);

    bool hasRemainder = resultsCount % 100000 != 0;

    return "شاهد ${formatted}M${hasRemainder ? '+' : ''} نتائج";
  }

  double bCount = resultsCount / 1000000000;
  String formatted = bCount < 10
      ? bCount.toStringAsFixed(1)
      : bCount.toStringAsFixed(0);
  bool hasRemainder = resultsCount % 100000000 != 0;

  return "شاهد ${formatted}B${hasRemainder ? '+' : ''} نتائج";
}
