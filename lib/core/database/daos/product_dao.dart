import 'package:otex_app/core/database/database_helper.dart';
import 'package:otex_app/core/database/models/product_model.dart';

class ProductDao {
  Future<List<Product>> getAllProducts() async {
    final db = await DatabaseHelper.instance.database;
    final result = await db.query("Products");
    return result.map((product) => Product.fromMap(product)).toList();
  }

  Future<Product?> getProductById({required int id}) async {
    final db = await DatabaseHelper.instance.database;
    final result = await db.query("Products", where: "id = ?", whereArgs: [id]);
    return (result.isNotEmpty) ? Product.fromMap(result.first) : null;
  }
}
