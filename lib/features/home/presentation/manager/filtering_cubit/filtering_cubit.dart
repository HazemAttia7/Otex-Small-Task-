import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:otex_app/features/home/data/repos/home_repo.dart';

part 'filtering_state.dart';

class FilteringCubit extends Cubit<FilteringState> {
  final HomeRepo homeRepo;
  FilteringCubit(this.homeRepo) : super(FilteringInitial());

  Future<void> fetchFilteredProductsCount({
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
    emit(FilteringLoading());
    final result = await homeRepo.getFilteredProductsCount(
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
      (failure) => emit(FilteringFailure(errMessage: failure.errMessage)),
      (count) => emit(FilteringCountSuccess(filteredProductsCount: count)),
    );
  }
}
