import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/icons/otex_icons.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/features/home/presentation/views/widgets/filtering_view_widgets/category_list_tile.dart';

class LocationActions extends StatelessWidget {
  const LocationActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kPageHorizontalPadding),
      child: Row(
        children: [
          const Expanded(
            child: CategoryListTile(
              icon: OtexIcons.location_on,
              title: 'مصر',
              subtitle: "الموقع",
            ),
          ),
          Icon(OtexIcons.arrow_back, size: 13.sp),
        ],
      ),
    );
  }
}
