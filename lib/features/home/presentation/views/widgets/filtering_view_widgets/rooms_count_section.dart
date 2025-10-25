import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/section_header.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/selection_chip.dart';

class RoomsCountSection extends StatefulWidget {
  const RoomsCountSection({super.key});

  @override
  State<RoomsCountSection> createState() => _RoomsCountSectionState();
}

class _RoomsCountSectionState extends State<RoomsCountSection> {
  int selectedChipIndex = 0;
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
                  isSelected: selectedChipIndex == 0,
                  onTap: () {
                    setState(() {
                      selectedChipIndex = 0;
                    });
                  },
                ),
                SelectionChip(
                  typeText: "غرفتين",
                  isSelected: selectedChipIndex == 1,
                  onTap: () {
                    setState(() {
                      selectedChipIndex = 1;
                    });
                  },
                ),
                SelectionChip(
                  typeText: "3 غرف",
                  isSelected: selectedChipIndex == 2,
                  onTap: () {
                    setState(() {
                      selectedChipIndex = 2;
                    });
                  },
                ),
                SelectionChip(
                  typeText: "4 غرف",
                  isSelected: selectedChipIndex == 3,
                  onTap: () {
                    setState(() {
                      selectedChipIndex = 3;
                    });
                  },
                ),
                SelectionChip(
                  typeText: "+5 غرف",
                  isSelected: selectedChipIndex == 4,
                  onTap: () {
                    setState(() {
                      selectedChipIndex = 4;
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
