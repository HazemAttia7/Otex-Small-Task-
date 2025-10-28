import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:otex_app/core/utils/constants.dart';
import 'package:otex_app/features/profile/presentation/views/widgets/profile_view_header.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kPageHorizontalPadding),
          child: Column(
            children: [Gap(25.h), const ProfileViewHeader(), Gap(20.h)],
          ),
        ),
      ),
    );
  }
}
