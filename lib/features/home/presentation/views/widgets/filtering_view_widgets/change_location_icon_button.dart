import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/icons/otex_icons.dart';

class ChangeLoactionIconButton extends StatelessWidget {
  const ChangeLoactionIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // show dialog to change location
      },
      child: Icon(OtexIcons.arrow_back, size: 13.sp),
    );
  }
}
