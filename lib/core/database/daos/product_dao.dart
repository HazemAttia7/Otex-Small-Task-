import 'package:otex_app/core/database/database_helper.dart';
import 'package:otex_app/core/database/models/product_model.dart';
import 'package:sqflite/sqflite.dart';

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
    final result = await db.rawQuery(
      """SELECT p.*
    FROM Products p
    JOIN Sub_Categories s ON p.subcategory_id = s.id
    WHERE s.category_id = ?
    """,
      [categoryId],
    );
    return result.map((product) => Product.fromMap(product)).toList();
  }

  Future<List<Product>> getProductsBySubCategory({
    required int subCategoryId,
  }) async {
    final db = await DatabaseHelper.instance.database;
    final result = await db.query(
      "Products",
      where: "subcategory_id = ?",
      whereArgs: [subCategoryId],
    );
    return result.map((product) => Product.fromMap(product)).toList();
  }

  Future<List<String>> getAllPropertyTypes() async {
    final db = await DatabaseHelper.instance.database;
    final result = await db.query(
      "Property_Details",
      columns: ["type"],
      distinct: true,
    );
    return result.map((e) => e['type'] as String).toList();
  }

  Future<List<Product>> getFilteredProducts({
    int? selectedCategoryId,
    int? selectedSubCategoryId,
    String? minProductPrice,
    String? maxProductPrice,
    String? minInstallmentValue,
    String? maxInstallmentValue,
    String? propertyType,
    String? propertyRoomsCount,
    String? paymentMethod,
    String? propertyStatus,
    String? propertyCondition,
  }) async {
    final db = await DatabaseHelper.instance.database;

    final whereClauses = <String>[];
    final whereArgs = <dynamic>[];

    if (selectedSubCategoryId != null && selectedSubCategoryId > 0) {
      whereClauses.add("sc.id = ?");
      whereArgs.add(selectedSubCategoryId);
    } else {
      if (selectedCategoryId != null && selectedCategoryId > 0) {
        whereClauses.add("c.id = ?");
        whereArgs.add(selectedCategoryId);
      }
    }

    if (minProductPrice != null && minProductPrice.isNotEmpty) {
      whereClauses.add("p.price >= ?");
      whereArgs.add(minProductPrice);
    }

    if (maxProductPrice != null && maxProductPrice.isNotEmpty) {
      whereClauses.add("p.price <= ?");
      whereArgs.add(maxProductPrice);
    }

    if (minInstallmentValue != null && minInstallmentValue.isNotEmpty) {
      whereClauses.add("pd.monthly_installment >= ?");
      whereArgs.add(minInstallmentValue);
    }

    if (maxInstallmentValue != null && maxInstallmentValue.isNotEmpty) {
      whereClauses.add("pd.monthly_installment <= ?");
      whereArgs.add(maxInstallmentValue);
    }

    if (propertyType != null && propertyType.isNotEmpty) {
      whereClauses.add("pd.type = ?");
      whereArgs.add(propertyType);
    }

    if (propertyRoomsCount != null && propertyRoomsCount.isNotEmpty) {
      whereClauses.add("pd.rooms = ?");
      whereArgs.add(propertyRoomsCount);
    }

    if (paymentMethod != null && paymentMethod.isNotEmpty) {
      whereClauses.add("p.payment_method LIKE ?");
      whereArgs.add('%"$paymentMethod"%');
    }

    if (propertyStatus != null && propertyStatus.isNotEmpty) {
      whereClauses.add("pd.property_status = ?");
      whereArgs.add(propertyStatus);
    }

    final result = await db.rawQuery("""
    SELECT p.*
    FROM Products p
    LEFT JOIN Property_Details pd ON p.id = pd.product_id
    LEFT JOIN Sub_Categories sc ON p.subcategory_id = sc.id
    LEFT JOIN Categories c ON sc.category_id = c.id
    ${whereClauses.isNotEmpty ? "WHERE ${whereClauses.join(" AND ")}" : ""}
  """, whereArgs);

    return result.map((product) => Product.fromMap(product)).toList();
  }

  Future<int> getFilteredProductsCount({
    int? selectedCategoryId,
    int? selectedSubCategoryId,
    String? minProductPrice,
    String? maxProductPrice,
    String? minInstallmentValue,
    String? maxInstallmentValue,
    String? propertyType,
    String? propertyRoomsCount,
    String? paymentMethod,
    String? propertyStatus,
  }) async {
    final db = await DatabaseHelper.instance.database;

    final whereClauses = <String>[];
    final whereArgs = <dynamic>[];

    if (selectedSubCategoryId != null && selectedSubCategoryId > 0) {
      whereClauses.add("sc.id = ?");
      whereArgs.add(selectedSubCategoryId);
    } else {
      if (selectedCategoryId != null && selectedCategoryId > 0) {
        whereClauses.add("c.id = ?");
        whereArgs.add(selectedCategoryId);
      }
    }

    if (minProductPrice != null && minProductPrice.isNotEmpty) {
      whereClauses.add("p.price >= ?");
      whereArgs.add(minProductPrice);
    }

    if (maxProductPrice != null && maxProductPrice.isNotEmpty) {
      whereClauses.add("p.price <= ?");
      whereArgs.add(maxProductPrice);
    }

    if (minInstallmentValue != null && minInstallmentValue.isNotEmpty) {
      whereClauses.add("pd.monthly_installment >= ?");
      whereArgs.add(minInstallmentValue);
    }

    if (maxInstallmentValue != null && maxInstallmentValue.isNotEmpty) {
      whereClauses.add("pd.monthly_installment <= ?");
      whereArgs.add(maxInstallmentValue);
    }

    if (propertyType != null && propertyType.isNotEmpty) {
      whereClauses.add("pd.type = ?");
      whereArgs.add(propertyType);
    }

    if (propertyRoomsCount != null && propertyRoomsCount.isNotEmpty) {
      whereClauses.add("pd.rooms = ?");
      whereArgs.add(propertyRoomsCount);
    }

    if (paymentMethod != null && paymentMethod.isNotEmpty) {
      whereClauses.add("p.payment_method LIKE ?");
      whereArgs.add('%"$paymentMethod"%');
    }

    if (propertyStatus != null && propertyStatus.isNotEmpty) {
      whereClauses.add("pd.property_status = ?");
      whereArgs.add(propertyStatus);
    }

    final result = await db.rawQuery("""
    SELECT COUNT(*) as count
    FROM Products p
    LEFT JOIN Property_Details pd ON p.id = pd.product_id
    LEFT JOIN Sub_Categories sc ON p.subcategory_id = sc.id
    LEFT JOIN Categories c ON sc.category_id = c.id
    ${whereClauses.isNotEmpty ? "WHERE ${whereClauses.join(" AND ")}" : ""}
  """, whereArgs);

    return Sqflite.firstIntValue(result) ?? 0;
  }
}
