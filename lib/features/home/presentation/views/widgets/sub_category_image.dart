import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubCategoryImage extends StatelessWidget {
  final bool isSelected;
  const SubCategoryImage({
    super.key,
    required this.image,
    required this.isSelected,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 73.sp,
      height: 56.sp,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        color: Colors.black.withValues(alpha: .1),
        border: isSelected
            ? Border.all(color: Colors.black, width: 1.sp)
            : null,
      ),
      child: Center(
        child: CachedNetworkImage(
          imageUrl: image,
          height: 45.sp,
          fit: BoxFit.contain,
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
