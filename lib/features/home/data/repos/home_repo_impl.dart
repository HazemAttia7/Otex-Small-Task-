import 'package:dartz/dartz.dart';
import 'package:otex_app/core/database/daos/category_dao.dart';
import 'package:otex_app/core/database/daos/product_dao.dart';
import 'package:otex_app/core/database/daos/sub_category_dao.dart';
import 'package:otex_app/core/database/models/category_model.dart';
import 'package:otex_app/core/database/models/product_model.dart';
import 'package:otex_app/core/database/models/sub_category_model.dart';
import 'package:otex_app/core/errors/failure.dart';
import 'package:otex_app/features/home/data/repos/home_repo.dart';
import 'package:sqflite/sqflite.dart';

class HomeRepoImpl implements HomeRepo {
  final CategoryDao _categoryDao = CategoryDao();
  final SubCategoryDao _subCategoryDao = SubCategoryDao();
  final ProductDao _productDao = ProductDao();

  @override
  Future<Either<Failure, List<Category>>> getAllCategories() async {
    try {
      final categoriesFromDb = await _categoryDao.getAllCategories();
      return right([Category(id: 0, name: "كل العروض"), ...categoriesFromDb]);
    } on Exception catch (e) {
      if (e is DatabaseException) {
        return left(DatabaseFailure.fromDatabaseException(e));
      }
      return left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Product>>> getAllProducts() async {
    try {
      return right(await _productDao.getAllProducts());
    } on Exception catch (e) {
      if (e is DatabaseException) {
        return left(DatabaseFailure.fromDatabaseException(e));
      }
      return left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<SubCategory>>> getAllSubCategories() async {
    try {
      return right(await _subCategoryDao.getAllSubCategories());
    } on Exception catch (e) {
      if (e is DatabaseException) {
        return left(DatabaseFailure.fromDatabaseException(e));
      }
      return left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Product>>> getProductsByCategory({
    required int categoryId,
  }) async {
    try {
      return right(
        await _productDao.getProductsByCategory(categoryId: categoryId),
      );
    } on Exception catch (e) {
      if (e is DatabaseException) {
        return left(DatabaseFailure.fromDatabaseException(e));
      }
      return left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Product>>> getProductsBySubCategory({
    required int subCategoryId,
  }) async {
    try {
      return right(
        await _productDao.getProductsBySubCategory(
          subCategoryId: subCategoryId,
        ),
      );
    } on Exception catch (e) {
      if (e is DatabaseException) {
        return left(DatabaseFailure.fromDatabaseException(e));
      }
      return left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<SubCategory>>> getSubCategoriesByCategory({
    required int categoryId,
  }) async {
    try {
      return right(
        await _subCategoryDao.getSubCategoriesByCategory(
          categoryId: categoryId,
        ),
      );
    } on Exception catch (e) {
      if (e is DatabaseException) {
        return left(DatabaseFailure.fromDatabaseException(e));
      }
      return left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<String>>> getAllPropertyTypes() async {
    try {
      return right(await _productDao.getAllPropertyTypes());
    } on Exception catch (e) {
      if (e is DatabaseException) {
        return left(DatabaseFailure.fromDatabaseException(e));
      }
      return left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Product>>> getFilteredProducts({
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
    try {
      return right(await _productDao.getFilteredProducts(
         selectedCategoryId: selectedCategoryId,
          selectedSubCategoryId: selectedSubCategoryId,
          minProductPrice: minProductPrice,
          maxProductPrice: maxProductPrice,
          minInstallmentValue: minInstallmentValue,
          maxInstallmentValue: maxInstallmentValue,
          propertyType: propertyType,
          propertyRoomsCount: propertyRoomsCount,
          paymentMethod: paymentMethod,
          propertyStatus: propertyStatus,
      ));
    } on Exception catch (e) {
      if (e is DatabaseException) {
        return left(DatabaseFailure.fromDatabaseException(e));
      }
      return left(DatabaseFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, int>> getFilteredProductsCount({
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
    try {
      return right(
        await _productDao.getFilteredProductsCount(
          selectedCategoryId: selectedCategoryId,
          selectedSubCategoryId: selectedSubCategoryId,
          minProductPrice: minProductPrice,
          maxProductPrice: maxProductPrice,
          minInstallmentValue: minInstallmentValue,
          maxInstallmentValue: maxInstallmentValue,
          propertyType: propertyType,
          propertyRoomsCount: propertyRoomsCount,
          paymentMethod: paymentMethod,
          propertyStatus: propertyStatus,
        ),
      );
    } on Exception catch (e) {
      if (e is DatabaseException) {
        return left(DatabaseFailure.fromDatabaseException(e));
      }
      return left(DatabaseFailure(e.toString()));
    }
  }
}
