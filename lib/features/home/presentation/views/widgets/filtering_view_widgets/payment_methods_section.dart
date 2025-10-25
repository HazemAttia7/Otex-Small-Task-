import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/section_header.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/selection_chip.dart';

class PaymentMethodsSection extends StatefulWidget {
  const PaymentMethodsSection({super.key});

  @override
  State<PaymentMethodsSection> createState() => _PaymentMethodsSectionState();
}

class _PaymentMethodsSectionState extends State<PaymentMethodsSection> {
  int selectedChipIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(sectionTitle: "طريقة الدفع"),
          Gap(12.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPageHorizontalPadding),
            child: Wrap(
              spacing: 10.w,
              runSpacing: 10.w,
              children: [
                SelectionChip(
                  typeText: "أي",
                  isSelected: selectedChipIndex == 0,
                  onTap: () {
                    setState(() {
                      selectedChipIndex = 0;
                    });
                  },
                ),
                SelectionChip(
                  typeText: "تقسيط",
                  isSelected: selectedChipIndex == 1,
                  onTap: () {
                    setState(() {
                      selectedChipIndex = 1;
                    });
                  },
                ),
                SelectionChip(
                  typeText: "كاش",
                  isSelected: selectedChipIndex == 2,
                  onTap: () {
                    setState(() {
                      selectedChipIndex = 2;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
