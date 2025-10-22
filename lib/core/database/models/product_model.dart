class ProductModel {
  final int? id;
  final String? imageUrl;
  final String name;
  final double price, discountPercent;
  final int soldCount, subcategoryId;

  ProductModel({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.discountPercent,
    required this.soldCount,
    required this.subcategoryId,
  });

  factory ProductModel.fromMap(Map<String, dynamic> map) => ProductModel(
    id: map["id"] as int?,
    imageUrl: map["image"] as String?,
    name: map["name"] as String,
    price: map["price"] as double,
    discountPercent: map["discount_percent"] as double,
    soldCount: map["sold_count"] as int,
    subcategoryId: map["subcategory_id"] as int,
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "image": imageUrl,
    "name": name,
    "price": price,
    "discount_percent": discountPercent,
    "sold_count": soldCount,
    "subcategory_id": subcategoryId,
  };

  double getPriceAfterDiscount() {
    return price - (price * discountPercent);
  }
}
