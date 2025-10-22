part of 'sub_categories_cubit.dart';

@immutable
sealed class SubCategoriesState {}

final class SubCategoriesInitial extends SubCategoriesState {}

final class SubCategoriesLoading extends SubCategoriesState {}

final class SubCategoriesFailure extends SubCategoriesState {
  final String errMessage;
  SubCategoriesFailure({required this.errMessage});
}

final class SubCategoriesSuccess extends SubCategoriesState {
  final List<SubCategory> subCategories;

  SubCategoriesSuccess({required this.subCategories});
}
