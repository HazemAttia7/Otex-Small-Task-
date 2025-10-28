import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/utils/app_styles.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    required this.text,
    this.themeColor,
    required this.baseColor,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  final bool value;
  final ValueChanged<bool?> onChanged;
  final String text;
  final Color? themeColor;
  final Color baseColor;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final Color activeColor = widget.themeColor ?? widget.baseColor;
    final bool isChecked = widget.value;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: widget.crossAxisAlignment,
      children: [
        _buildCheckbox(isChecked, activeColor),
        SizedBox(width: screenWidth * 0.01),
        _buildText(isChecked, activeColor),
      ],
    );
  }

  GestureDetector _buildText(bool isChecked, Color activeColor) {
    return GestureDetector(
      onTap: () {
        widget.onChanged(!widget.value);
      },
      child: Text(
        widget.text,
        style: AppStyles.textStyle16Bold.copyWith(
          fontWeight: FontWeight.bold,
          color: isChecked ? activeColor : widget.baseColor,
        ),
      ),
    );
  }

  Widget _buildCheckbox(bool isChecked, Color activeColor) {
    return SizedBox(
      width: 18.sp,
      height: 18.sp,
      child: Padding(
        padding: EdgeInsets.all(3.sp),
        child: Checkbox(
          value: isChecked,
          onChanged: widget.onChanged,
          checkColor: Colors.white,
          fillColor: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return activeColor;
            }
            return Colors.white;
          }),
          side: BorderSide(
            color: isChecked ? activeColor : widget.baseColor,
            width: 2,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2.r),
          ),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity.compact,
        ),
      ),
    );
  }
}
