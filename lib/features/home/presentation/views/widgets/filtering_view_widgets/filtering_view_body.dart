import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/category_section.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/filtering_view_header.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/monthly_installments_section.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/payment_methods_section.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/price_section.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/property_condition_section.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/rooms_count_section.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/type_section.dart';

class FilteringViewBody extends StatelessWidget {
  const FilteringViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Gap(25.h),
            const FilteringViewHeader(),
            Gap(32.h),
            const CategorySection(),
            Gap(20.h),
            const MonthlyInstallmentsSection(),
            Gap(20.h),
            const TypeSection(),
            Gap(20.h),
            const RoomsCountSection(),
            Gap(20.h),
            const PriceSection(),
            Gap(20.h),
            const PaymentMethodsSection(),
            Gap(20.h),
            const PropertyConditionSection(),
            Gap(78.h),
          ],
        ),
      ),
    );
  }
}
