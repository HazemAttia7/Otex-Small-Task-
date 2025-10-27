import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/min_max_price_text_fields.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/section_header.dart';

class PriceSection extends StatefulWidget {
  final Function(String?) onMinPriceChanged, onMaxPriceChanged;
  final TextEditingController minProductPriceController,maxProductPriceController;
  const PriceSection({
    super.key,
    required this.onMinPriceChanged,
    required this.onMaxPriceChanged, required this.minProductPriceController, required this.maxProductPriceController,
  });

  @override
  State<PriceSection> createState() => _PriceSectionState();
}

class _PriceSectionState extends State<PriceSection> {
  final TextEditingController minController = TextEditingController();
  final TextEditingController maxController = TextEditingController();

  @override
  void dispose() {
    minController.dispose();
    maxController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(sectionTitle: "السعر"),
        Gap(12.h),
        MinMaxPriceTextFields(
          minController: widget.minProductPriceController,
          maxController: widget.maxProductPriceController,
          onMinPriceChanged: widget.onMinPriceChanged,
          onMaxPriceChanged: widget.onMaxPriceChanged,
        ),
      ],
    );
  }
}
