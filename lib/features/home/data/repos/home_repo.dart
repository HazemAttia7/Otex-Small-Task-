import 'package:dartz/dartz.dart';
import 'package:otex_app/core/database/models/category_model.dart';
import 'package:otex_app/core/database/models/product_model.dart';
import 'package:otex_app/core/database/models/sub_category_model.dart';
import 'package:otex_app/core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Category>>> getAllCategories();
  Future<Either<Failure, List<SubCategory>>> getAllSubCategories();
  Future<Either<Failure, List<SubCategory>>> getSubCategoriesByCategory({
    required int categoryId,
  });
  Future<Either<Failure, List<Product>>> getAllProducts();
  Future<Either<Failure, List<Product>>> getProductsByCategory({
    required int categoryId,
  });
  Future<Either<Failure, List<Product>>> getProductsBySubCategory({
    required int subCategoryId,
  });
  Future<Either<Failure, List<String>>> getAllPropertyTypes();

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
  });

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
  });
}
