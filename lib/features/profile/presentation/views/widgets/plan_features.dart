import 'package:flutter/material.dart';
import 'package:otex_app/core/database/models/plan_model.dart';
import 'package:otex_app/features/profile/presentation/views/widgets/main_features_column.dart';
import 'package:otex_app/features/profile/presentation/views/widgets/views_multiplier_widget.dart';

class PlanFeatures extends StatelessWidget {
  final Plan plan;
  const PlanFeatures({super.key, required this.plan});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3, child: MainFeaturesColumn(features: plan.features)),
        if (plan.viewsMultiplier != null)
          Expanded(
            child: ViewsMultiplierWidget(
              viewsMultiplier: plan.viewsMultiplier!,
            ),
          ),
      ],
    );
  }
}
