import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/min_max_installment_text_fields.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/section_header.dart';

class MonthlyInstallmentsSection extends StatefulWidget {
  final Function(String?) onMinInstallmentChanged;
  final Function(String?) onMaxInstallmentChanged;
  final TextEditingController minInstallmentController,
      maxInstallmentController;
  const MonthlyInstallmentsSection({
    super.key,
    required this.onMinInstallmentChanged,
    required this.onMaxInstallmentChanged, required this.minInstallmentController, required this.maxInstallmentController,
  });

  @override
  State<MonthlyInstallmentsSection> createState() =>
      _MonthlyInstallmentsSectionState();
}

class _MonthlyInstallmentsSectionState
    extends State<MonthlyInstallmentsSection> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(sectionTitle: "الأقساط الشهرية"),
        Gap(12.h),
        MinMaxInstallmentTextFields(
          minController:widget.minInstallmentController,
          maxController:widget.maxInstallmentController,
          onMinInstallmentChanged: widget.onMinInstallmentChanged,
          onMaxInstallmentChanged: widget.onMaxInstallmentChanged,
        ),
      ],
    );
  }
}
