import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/section_header.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/selection_chip.dart';

class PropertyStatusSection extends StatelessWidget {
  final Function(String?) onPropertyStatusSelect;
  final String? selectedPropertyStatus;
  const PropertyStatusSection({
    super.key,
    required this.onPropertyStatusSelect,
    this.selectedPropertyStatus,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(sectionTitle: "حالة العقار"),
          Gap(12.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPageHorizontalPadding),
            child: Wrap(
              spacing: 10.w,
              runSpacing: 10.w,
              children: [
                SelectionChip(
                  typeText: "أي",
                  isSelected: selectedPropertyStatus == null,
                  onTap: () {
                    onPropertyStatusSelect(null);
                  },
                ),
                SelectionChip(
                  typeText: "جاهز",
                  isSelected: selectedPropertyStatus == "جاهز",
                  onTap: () {
                    onPropertyStatusSelect("جاهز");
                  },
                ),
                SelectionChip(
                  typeText: "قيد الإنشاء",
                  isSelected: selectedPropertyStatus == "قيد الإنشاء",
                  onTap: () {
                    onPropertyStatusSelect("قيد الإنشاء");
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
