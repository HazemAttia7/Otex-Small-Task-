class PlanFeature {
  final int? id;
  final int planId;
  final String? iconName;
  final String? subtitle;
  final String text;

  PlanFeature({
    required this.id,
    required this.planId,
    required this.iconName,
    required this.subtitle,
    required this.text,
  });

  factory PlanFeature.fromMap(Map<String, dynamic> map) {
    return PlanFeature(
      id: map['id'] as int?,
      planId: map['plan_id'] as int,
      iconName: map['icon_name'] as String?,
      subtitle: map['subtitle'] as String?,
      text: map['text'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'plan_id': planId,
      'icon_name': iconName,
      'subtitle': subtitle,
      'text': text,
    };
  }
}
