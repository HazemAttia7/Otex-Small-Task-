import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/filter_text_field.dart';

class MinMaxInstallmentTextFields extends StatefulWidget {
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
  State<MinMaxInstallmentTextFields> createState() =>
      _MinMaxInstallmentTextFieldsState();
}

class _MinMaxInstallmentTextFieldsState
    extends State<MinMaxInstallmentTextFields> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kPageHorizontalPadding),
        child: Row(
          spacing: 12.w,
          children: [
            Expanded(
              child: FilterTextField(
                hintText: 'من',
                controller: widget.minController,
                keyboardType: TextInputType.number,
                suffixText: 'جنيه',
                onChanged: (value) {
                  widget.onMinInstallmentChanged(value);
                  if (widget.maxController.text.isNotEmpty) {
                    _formKey.currentState?.validate();
                  }
                },
              ),
            ),
            Expanded(
              child: FilterTextField(
                hintText: 'إلى',
                controller: widget.maxController,
                keyboardType: TextInputType.number,
                suffixText: 'جنيه',
                onChanged: widget.onMaxInstallmentChanged,
                validator: (value) {
                  final min = double.tryParse(widget.minController.text);
                  final max = double.tryParse(widget.maxController.text);

                  if (min != null && max != null && max < min) {
                    return 'يجب أن يكون السعر الأقصى أكبر من السعر الأدنى';
                  }
                  return null;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
