import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/core/utils/app_styles.dart';
import 'package:otex_app/features/home/presentation/views/widgets/custom_image.dart';

class SubCategoriesListViewItem extends StatelessWidget {
  final String image, text;
  const SubCategoriesListViewItem({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomImage(image: image),
        Gap(8.h),
        Text(text, style: AppStyles.textStyle12.copyWith(height: 1)),
      ],
    );
  }
}
