import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/filter_text_field.dart';

class MinMaxPriceTextFields extends StatelessWidget {
  const MinMaxPriceTextFields({
    super.key,
    required this.minController,
    required this.maxController,
  });

  final TextEditingController minController;
  final TextEditingController maxController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kPageHorizontalPadding),
      child: Row(
        spacing: 12.w,
        children: [
          Expanded(
            child: FilterTextField(
              hintText: 'أقل سعر',
              controller: minController,
              keyboardType: TextInputType.number,
              suffixText: 'جنيه',
            ),
          ),
          Expanded(
            child: FilterTextField(
              hintText: 'أقصى سعر',
              controller: maxController,
              keyboardType: TextInputType.number,
              suffixText: 'جنيه',
            ),
          ),
        ],
      ),
    );
  }
}
