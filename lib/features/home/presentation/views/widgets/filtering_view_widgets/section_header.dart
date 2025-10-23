import 'package:flutter/material.dart';
import 'package:otex_app/core/utils/app_styles.dart';
import 'package:otex_app/core/utils/constants.dart';

class SectionHeader extends StatelessWidget {
  final String sectionTitle;
  const SectionHeader({super.key, required this.sectionTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kPagePadding),
      child: Text(sectionTitle, style: AppStyles.textStyle16Medium),
    );
  }
}
