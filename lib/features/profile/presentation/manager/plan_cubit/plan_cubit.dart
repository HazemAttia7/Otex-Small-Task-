import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:otex_app/core/database/models/plan_model.dart';
import 'package:otex_app/features/profile/data/repos/profile_repo.dart';

part 'plan_state.dart';

class PlanCubit extends Cubit<PlanState> {
  final ProfileRepo profileRepo;
  PlanCubit(this.profileRepo) : super(PlanInitial());

  Future<void> getAllPlans() async {
    emit(PlanLoading());
    final result = await profileRepo.getAllPlans();
    result.fold(
      (failure) => emit(PlanFailure(errMessage: failure.errMessage)),
      (plans) => emit(PlanSuccess(plans: plans)),
    );
  }
}
