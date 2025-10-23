import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_styles.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/features/home/presentation/views/widgets/home_icon_text_row.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kPagePadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "اسكتشف العروض",
            style: AppStyles.textStyle16Medium.copyWith(color: Colors.black),
          ),
          const HomeIconTextRow(),
        ],
      ),
    );
  }
}
