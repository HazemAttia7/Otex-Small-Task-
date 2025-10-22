import 'package:otex_app/core/database/models/category_model.dart';
import 'package:otex_app/core/database/models/product_model.dart';
import 'package:otex_app/core/database/models/sub_category_model.dart';

abstract class HomeRepo {
  Future<List<Category>> getAllCategories();
  Future<List<SubCategory>> getAllSubCategories();
  Future<List<Product>> getAllProducts();
  Future<List<Product>> getProductsByCategory({required int categoryId});
  Future<List<Product>> getProductsBySubCategory({required int subCategoryId});
}
