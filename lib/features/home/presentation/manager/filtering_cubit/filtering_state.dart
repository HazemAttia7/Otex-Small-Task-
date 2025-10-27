part of 'filtering_cubit.dart';

@immutable
sealed class FilteringState {}

final class FilteringInitial extends FilteringState {}

final class FilteringLoading extends FilteringState {}

final class FilteringFailure extends FilteringState {
  final String errMessage;

  FilteringFailure({required this.errMessage});
}

final class FilteringCountSuccess extends FilteringState {
  final int filteredProductsCount;
  FilteringCountSuccess({required this.filteredProductsCount});
}
