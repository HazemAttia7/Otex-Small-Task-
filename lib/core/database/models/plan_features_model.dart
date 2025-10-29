class PlanFeatures {
  final int? id;
  final int planId;
  final String? iconName;
  final String? subtitle;
  final String text;

  PlanFeatures({
    this.id,
    required this.planId,
    this.iconName,
    this.subtitle,
    required this.text,
  });

  factory PlanFeatures.fromMap(Map<String, dynamic> map) {
    return PlanFeatures(
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
