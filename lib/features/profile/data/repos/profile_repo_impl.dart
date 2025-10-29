import 'package:dartz/dartz.dart';
import 'package:otex_app/core/database/daos/plan_dao.dart';
import 'package:otex_app/core/database/models/plan_model.dart';
import 'package:otex_app/core/errors/failure.dart';
import 'package:otex_app/features/profile/data/repos/profile_repo.dart';
import 'package:sqflite/sqflite.dart';

class ProfileRepoImpl implements ProfileRepo {
  final PlanDao planDao;
  ProfileRepoImpl({required this.planDao});

  @override
  Future<Either<Failure, List<Plan>>> getAllPlans() async {
    try {
      final plansFromDb = await planDao.getAllPlans();
      return right(plansFromDb);
    } on Exception catch (e) {
      if (e is DatabaseException) {
        return left(DatabaseFailure.fromDatabaseException(e));
      }
      return left(DatabaseFailure(e.toString()));
    }
  }
}
