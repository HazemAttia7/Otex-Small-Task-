import 'package:otex_app/core/database/daos/category_dao.dart';
import 'package:otex_app/core/database/daos/product_dao.dart';
import 'package:otex_app/core/database/daos/sub_category_dao.dart';
import 'package:otex_app/core/database/models/category_model.dart';
import 'package:otex_app/core/database/models/product_model.dart';
import 'package:otex_app/core/database/models/sub_category_model.dart';
import 'package:otex_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final CategoryDao _categoryDao = CategoryDao();
  final SubCategoryDao _subCategoryDao = SubCategoryDao();
  final ProductDao _productDao = ProductDao();

  @override
  Future<List<Category>> getAllCategories() async {
    final categoriesFromDb = await _categoryDao.getAllCategories();
    return [Category(id: 0, name: "كل العروض"), ...categoriesFromDb];
  }

  @override
  Future<List<Product>> getAllProducts() async =>
      await _productDao.getAllProducts();

  @override
  Future<List<SubCategory>> getAllSubCategories() async =>
      await _subCategoryDao.getAllSubCategories();

  @override
  Future<List<Product>> getProductsByCategory({
    required int categoryId,
  }) async => await _productDao.getProductsByCategory(categoryId: categoryId);

  @override
  Future<List<Product>> getProductsBySubCategory({
    required int subCategoryId,
  }) async =>
      _productDao.getProductsBySubCategory(subCategoryId: subCategoryId);
}
