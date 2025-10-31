import 'package:otex_app/core/database/models/plan_features_model.dart';

class Plan {
  final int? id;
  final String name;
  final double price;
  final String? tag;
  final int? viewsMultiplier, durationDays;
  final List<PlanFeature> features;

  Plan({
    required this.id,
    required this.name,
    required this.price,
    required this.tag,
    required this.viewsMultiplier,
    required this.durationDays,
    this.features = const [],
  });

  factory Plan.fromMap(
    Map<String, dynamic> map, {
    List<PlanFeature> features = const [],
  }) {
    return Plan(
      id: map['id'] as int?,
      name: map['name'] as String,
      price: (map['price'] as num).toDouble(),
      tag: map['tag'] as String?,
      viewsMultiplier: map['views_multiplier'] as int?,
      durationDays: map['duration_days'] as int?,
      features: features,
    );
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'price': price, 'tag': tag};
  }
}
