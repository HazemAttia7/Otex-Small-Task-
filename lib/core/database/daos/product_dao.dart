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

  Future<List<Product>> getProductsByCategory({required int categoryId}) async {
    final db = await DatabaseHelper.instance.database;
    final result = await db.rawQuery("""SELECT p.*
    FROM Products p
    JOIN Sub_Categories s ON p.subcategory_id = s.id
    WHERE s.category_id = ?
    """ , [categoryId]);
    return result.map((product) => Product.fromMap(product)).toList();
  }

   Future<List<Product>> getProductsBySubCategory({required int subCategoryId}) async {
    final db = await DatabaseHelper.instance.database;
      final result = await db.query("Products", where: "subcategory_id = ?", whereArgs: [subCategoryId]);
    return result.map((product) => Product.fromMap(product)).toList();
  }
}
