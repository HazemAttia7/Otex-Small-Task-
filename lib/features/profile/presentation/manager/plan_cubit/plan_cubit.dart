import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:otex_app/core/database/models/plan_model.dart';

part 'plan_state.dart';

class PlanCubit extends Cubit<PlanState> {
  PlanCubit() : super(PlanInitial());
}
