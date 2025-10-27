import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/section_header.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/selection_chip.dart';

class PropertyRoomsCountSection extends StatelessWidget {
  final Function(String?) onSelectCount;
  final String? selectedCount;
  const PropertyRoomsCountSection({
    super.key,
    required this.onSelectCount,
    required this.selectedCount,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(sectionTitle: "عدد الغرف"),
          Gap(12.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPageHorizontalPadding),
            child: Wrap(
              spacing: 10.w,
              runSpacing: 10.w,
              children: [
                SelectionChip(
                  typeText: "الكل",
                  isSelected: selectedCount == null,
                  onTap: () {
                    onSelectCount(null);
                  },
                ),
                SelectionChip(
                  typeText: "غرفتين",
                  isSelected: selectedCount == "2",
                  onTap: () {
                    onSelectCount("2");
                  },
                ),
                SelectionChip(
                  typeText: "3 غرف",
                  isSelected: selectedCount == "3",
                  onTap: () {
                    onSelectCount("3");
                  },
                ),
                SelectionChip(
                  typeText: "4 غرف",
                  isSelected: selectedCount == "4",
                  onTap: () {
                    onSelectCount("4");
                  },
                ),
                SelectionChip(
                  typeText: "+5 غرف",
                  isSelected: selectedCount == "+5",
                  onTap: () {
                    onSelectCount("+5");
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
