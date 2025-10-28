import 'package:flutter/material.dart';
import 'package:otex_app/features/profile/presentation/views/widgets/main_features_column.dart';
import 'package:otex_app/features/profile/presentation/views/widgets/views_multiplier_widget.dart';

class PlanFeatures extends StatelessWidget {
  const PlanFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 3, child: MainFeaturesColumn()),
        Expanded(child: ViewsMultiplierWidget()),
      ],
    );
  }
}
