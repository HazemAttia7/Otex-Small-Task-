import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/features/home/presentation/manager/property_details.dart/property_details_cubit.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/section_header.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/selection_chip.dart';

class PropertyTypeSection extends StatelessWidget {
  final Function(String?) onSelectType;
  final String? selectedType;

  const PropertyTypeSection({
    super.key,
    required this.onSelectType,
    required this.selectedType,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PropertyDetailsCubit, PropertyDetailsState>(
      builder: (context, state) {
        if (state is PropertyDetailsSuccess) {
          final List<String> types = state.types;

          return SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SectionHeader(sectionTitle: "النوع"),
                Gap(12.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Wrap(
                    spacing: 10.w,
                    runSpacing: 10.w,
                    children: [
                      SelectionChip(
                        typeText: "الكل",
                        isSelected: selectedType == null,
                        onTap: () => onSelectType(null),
                      ),
                      ...types.map(
                        (t) => SelectionChip(
                          typeText: t,
                          isSelected: selectedType == t,
                          onTap: () => onSelectType(t),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        } else if (state is PropertyDetailsFailure) {
          return Text("Error: ${state.errMessage}");
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
