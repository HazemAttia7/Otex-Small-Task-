import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:otex_app/features/home/data/repos/home_repo.dart';

part 'property_details_state.dart';

class PropertyDetailsCubit extends Cubit<PropertyDetailsState> {
  final HomeRepo homeRepo;
  PropertyDetailsCubit(this.homeRepo) : super(PropertyDetailsInitial());

  Future<void> fetchAllPropertyTypes() async {
    emit(PropertyDetailsLoading());
    final result = await homeRepo.getAllPropertyTypes();
    result.fold(
      (failure) => emit(PropertyDetailsFailure(errMessage: failure.errMessage)),
      (types) => emit(PropertyDetailsSuccess(types: types)),
    );
  }
}
