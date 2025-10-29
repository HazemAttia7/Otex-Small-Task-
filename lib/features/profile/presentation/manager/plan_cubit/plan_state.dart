part of 'plan_cubit.dart';

@immutable
sealed class PlanState {}

final class PlanInitial extends PlanState {}

final class PlanLoading extends PlanState {}

final class PlanFailure extends PlanState {
  final String errMessage;
  PlanFailure({required this.errMessage});
}

final class PlanSuccess extends PlanState {
  final List<Plan> plan;

  PlanSuccess({required this.plan});
}
