import 'package:otex_app/core/database/models/category_model.dart';

class SubCategory {
  final int? id;
  final String? imageUrl;
  final String name;
  final Category category;

  SubCategory({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.category,
  });

  factory SubCategory.fromMap(Map<String, dynamic> map) {
    return SubCategory(
      id: map['id'] as int?,
      imageUrl: map['image'] as String?,
      name: map['name'] as String,
      category: Category(
        id: map['c_id'] as int?,
        name: map['c_name'] as String,
      ),
    );
  }

  Map<String, dynamic> toMap() => {
    'id': id,
    'image': imageUrl,
    'name': name,
    'category_id': category.id,
  };
}
