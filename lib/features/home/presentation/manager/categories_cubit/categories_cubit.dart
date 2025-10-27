import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:otex_app/core/database/models/category_model.dart';
import 'package:otex_app/features/home/data/repos/home_repo.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  final HomeRepo homeRepo;
  Category? selectedCategory;

  void selectCategory(Category? category) {
    selectedCategory = category;
  }

  CategoriesCubit(this.homeRepo) : super(CategoriesInitial());

  Future<void> fetchAllCategories() async {
    emit(CategoriesLoading());
    var result = await homeRepo.getAllCategories();
    result.fold(
      (failure) => emit(CategoriesFailure(errMessage: failure.errMessage)),
      (categories) => emit(CategoriesSuccess(categories: categories)),
    );
  }
}
