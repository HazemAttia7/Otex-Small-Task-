import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:otex_app/core/database/models/sub_category_model.dart';
import 'package:otex_app/features/home/data/repos/home_repo.dart';

part 'sub_categories_state.dart';

class SubCategoriesCubit extends Cubit<SubCategoriesState> {
  final HomeRepo homeRepo;
  SubCategory? selectedSubCategory;
  int selectedIndex = -1;

  void selectSubCategory(SubCategory? subCategory) {
    selectedSubCategory = subCategory;
  }

  void resetSelectedIndex() {
    selectedIndex = -1;
    selectedSubCategory = null;
  }

  SubCategoriesCubit(this.homeRepo) : super(SubCategoriesInitial());

  Future<void> fetchAllSubcategories() async {
    emit(SubCategoriesLoading());
    var result = await homeRepo.getAllSubCategories();
    result.fold(
      (failure) => emit(SubCategoriesFailure(errMessage: failure.errMessage)),
      (subCategories) =>
          emit(SubCategoriesSuccess(subCategories: subCategories)),
    );
  }

  Future<void> fetchSubCategoriesByCategory({required int categoryId}) async {
    emit(SubCategoriesLoading());
    final result = await homeRepo.getSubCategoriesByCategory(
      categoryId: categoryId,
    );
    result.fold(
      (failure) => emit(SubCategoriesFailure(errMessage: failure.errMessage)),
      (subCategories) =>
          emit(SubCategoriesSuccess(subCategories: subCategories)),
    );
  }
}
