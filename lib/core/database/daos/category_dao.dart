import 'package:otex_app/core/database/database_helper.dart';
import 'package:otex_app/core/database/models/category_model.dart';

class CategoryDao {
  Future<List<Category>> getAllCategories() async {
    final db = await DatabaseHelper.instance.database;
    final result = await db.query("Categories");
    return result.map((category) => Category.fromMap(category)).toList();
  }

  Future<Category?> getCategoryById({required int id}) async {
    final db = await DatabaseHelper.instance.database;
    final result = await db.query(
      "Categories",
      where: "id = ?",
      whereArgs: [id],
      limit: 1,
    );
    return (result.isNotEmpty) ? Category.fromMap(result.first) : null;
  }
}
