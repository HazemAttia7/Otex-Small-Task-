import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:otex_app/core/database/models/product_model.dart';
import 'package:otex_app/features/home/data/repos/home_repo.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final HomeRepo homeRepo;
  ProductsCubit(this.homeRepo) : super(ProductsInitial());

  Future<void> fetchAllProducts() async {
    emit(ProductsLoading());
    var result = await homeRepo.getAllProducts();
    result.fold(
      (failure) => emit(ProductsFailure(errMessage: failure.errMessage)),
      (products) => emit(ProductsSuccess(products: products)),
    );
  }

  Future<void> fetchProductsByCategory({required int categoryId}) async {
    emit(ProductsLoading());
    final result = await homeRepo.getProductsByCategory(categoryId: categoryId);
    result.fold(
      (failure) => emit(ProductsFailure(errMessage: failure.errMessage)),
      (products) => emit(ProductsSuccess(products: products)),
    );
  }

  Future<void> fetchProductsBySubCategory({required int subCategoryId}) async {
    emit(ProductsLoading());
    final result = await homeRepo.getProductsBySubCategory(
      subCategoryId: subCategoryId,
    );
    result.fold(
      (failure) => emit(ProductsFailure(errMessage: failure.errMessage)),
      (products) => emit(ProductsSuccess(products: products)),
    );
  }

  Future<void> fetchFilteredProducts({
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
    emit(ProductsLoading());
    final result = await homeRepo.getFilteredProducts(
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
    );
    result.fold(
      (failure) => emit(ProductsFailure(errMessage: failure.errMessage)),
      (products) => emit(ProductsSuccess(products: products)),
    );
  }
}
