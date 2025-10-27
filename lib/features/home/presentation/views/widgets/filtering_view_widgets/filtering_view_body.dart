import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/core/widgets/custom_button.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/category_section.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/filtering_view_header.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/monthly_installments_section.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/payment_methods_section.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/price_section.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/property_condition_section.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/rooms_count_section.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/type_section.dart';

class FilteringViewBody extends StatefulWidget {
  const FilteringViewBody({super.key});

  @override
  State<FilteringViewBody> createState() => _FilteringViewBodyState();
}

class _FilteringViewBodyState extends State<FilteringViewBody> {
  String? minIntallmentValue,
      minProductPrice,
      maxIntallmentValue,
      maxProductPrice;
  int selectedTypeId = 0;
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
            MonthlyInstallmentsSection(
              onMinInstallmentChanged: (String? value) {
                minIntallmentValue = value;
              },
              onMaxInstallmentChanged: (String? value) {
                maxIntallmentValue = value;
              },
            ),
            Gap(20.h),
            TypeSection(
              onSelectType: (int selectedIndex) {
                selectedTypeId = selectedIndex;
              },
            ),
            Gap(20.h),
            const RoomsCountSection(),
            Gap(20.h),
            const PriceSection(),
            Gap(20.h),
            const PaymentMethodsSection(),
            Gap(20.h),
            const PropertyConditionSection(),
            Gap(78.h),
            CustomButton(onTap: () {}),
            Gap(16.h),
          ],
        ),
      ),
    );
  }
}
