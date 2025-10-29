import 'package:otex_app/core/database/models/plan_features_model.dart';

class Plan {
  final int? id;
  final String name;
  final double price;
  final String? tag;
  final List<PlanFeatures> planFeatures;

  Plan({
    this.id,
    required this.name,
    required this.price,
    this.tag,
    this.planFeatures = const [],
  });

  factory Plan.fromMap(
    Map<String, dynamic> map, {
    List<PlanFeatures> features = const [],
  }) {
    return Plan(
      id: map['id'] as int?,
      name: map['name'] as String,
      price: (map['price'] as num).toDouble(),
      tag: map['tag'] as String?,
      planFeatures: features,
    );
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'price': price, 'tag': tag};
  }
}
