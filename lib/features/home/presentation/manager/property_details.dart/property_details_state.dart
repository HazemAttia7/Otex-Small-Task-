part of 'property_details_cubit.dart';

@immutable
sealed class PropertyDetailsState {}

final class PropertyDetailsInitial extends PropertyDetailsState {}

final class PropertyDetailsLoading extends PropertyDetailsState {}

final class PropertyDetailsFailure extends PropertyDetailsState {
  final String errMessage;

  PropertyDetailsFailure({required this.errMessage});
}

final class PropertyDetailsSuccess extends PropertyDetailsState {
  final List<String> types;
  PropertyDetailsSuccess({required this.types});
}
