import 'package:otex_app/core/database/database_helper.dart';
import 'package:otex_app/core/database/models/sub_category_model.dart';

class SubCategoryDao {
  Future<List<SubCategory>> getAllSubCategories() async {
    final db = await DatabaseHelper.instance.database;
    final result = await db.rawQuery('''
  SELECT s.*, c.id AS c_id, c.name AS c_name
  FROM Sub_Categories s
  JOIN Categories c ON s.category_id = c.id
''');
    return result
        .map((subCategory) => SubCategory.fromMap(subCategory))
        .toList();
  }

  Future<SubCategory?> getSubCategoryById({required int id}) async {
    final db = await DatabaseHelper.instance.database;
    final result = await db.query(
      "Sub_Categories",
      where: "id = ?",
      whereArgs: [id],
      limit: 1,
    );
    return (result.isNotEmpty) ? SubCategory.fromMap(result.first) : null;
  }
}
