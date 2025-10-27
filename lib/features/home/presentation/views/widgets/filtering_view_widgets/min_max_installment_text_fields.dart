import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/filter_text_field.dart';

class MinMaxInstallmentTextFields extends StatelessWidget {
  final Function(String?) onMinInstallmentChanged;
  final Function(String?) onMaxInstallmentChanged;
  const MinMaxInstallmentTextFields({
    super.key,
    required this.minController,
    required this.maxController,
    required this.onMinInstallmentChanged,
    required this.onMaxInstallmentChanged,
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
              hintText: 'من',
              controller: minController,
              keyboardType: TextInputType.number,
              suffixText: 'جنيه',
              onChanged: onMinInstallmentChanged,
            ),
          ),
          Expanded(
            child: FilterTextField(
              hintText: 'إلى',
              controller: maxController,
              keyboardType: TextInputType.number,
              suffixText: 'جنيه',
              onChanged: onMaxInstallmentChanged,
            ),
          ),
        ],
      ),
    );
  }
}
