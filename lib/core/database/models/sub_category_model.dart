class SubCategoryModel {
  final int? id;
  final String? imageUrl;
  final String name;
  final int categoryId;

  SubCategoryModel({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.categoryId,
  });

  factory SubCategoryModel.fromMap(Map<String, dynamic> map) {
    return SubCategoryModel(
      id: map['id'] as int?,
      imageUrl: map['image'] as String?,
      name: map['name'] as String,
      categoryId: map['category_id'] as int,
    );
  }

  Map<String, dynamic> toMap() => {
    'id': id,
    'image': imageUrl,
    'name': name,
    'category_id': categoryId,
  };
}
