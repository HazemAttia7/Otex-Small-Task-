import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/section_header.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/selection_chip.dart';

class TypeSection extends StatefulWidget {
  final Function(int) onSelectType;
  const TypeSection({super.key, required this.onSelectType});

  @override
  State<TypeSection> createState() => _TypeSectionState();
}

class _TypeSectionState extends State<TypeSection> {
  int selectedChipIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(sectionTitle: "النوع"),
          Gap(12.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPageHorizontalPadding),
            child: Wrap(
              spacing: 10.w,
              runSpacing: 10.w,
              children: [
                SelectionChip(
                  typeText: "الكل",
                  isSelected: selectedChipIndex == 0,
                  onTap: () {
                    setState(() {
                      selectedChipIndex = 0;
                    });
                    widget.onSelectType(selectedChipIndex);
                  },
                ),
                SelectionChip(
                  typeText: "توين هاوس",
                  isSelected: selectedChipIndex == 1,
                  onTap: () {
                    setState(() {
                      selectedChipIndex = 1;
                    });
                    widget.onSelectType(selectedChipIndex);
                  },
                ),
                SelectionChip(
                  typeText: "فيلا منفصلة",
                  isSelected: selectedChipIndex == 2,
                  onTap: () {
                    setState(() {
                      selectedChipIndex = 2;
                    });
                    widget.onSelectType(selectedChipIndex);
                  },
                ),
                SelectionChip(
                  typeText: "تاون هاوس",
                  isSelected: selectedChipIndex == 3,
                  onTap: () {
                    setState(() {
                      selectedChipIndex = 3;
                    });
                    widget.onSelectType(selectedChipIndex);
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
