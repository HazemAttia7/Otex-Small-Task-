import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex_app/core/database/models/plan_features_model.dart';
import 'package:otex_app/core/icons/otex_icons.dart';
import 'package:otex_app/features/profile/presentation/views/widgets/plan_icon_text_row.dart';

class MainFeaturesColumn extends StatelessWidget {
  final List<PlanFeature> features;
  const MainFeaturesColumn({super.key, required this.features});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.h,
      children: [
        ...features.map(
          (feature) => PlanIconTextRow(
            icon: _getIcon(feature.iconName),
            text: feature.text,
            subtitle: feature.subtitle,
          ),
        ),
      ],
    );
  }

  IconData _getIcon(String? name) {
    switch (name) {
      case 'hour':
        return OtexIcons.hour;
      case 'rocket':
        return OtexIcons.rocket;
      case 'pin':
        return OtexIcons.pin;
      case 'award':
        return OtexIcons.award;
      case 'earth':
        return OtexIcons.earth;
      default:
        return Icons.circle;
    }
  }
}
