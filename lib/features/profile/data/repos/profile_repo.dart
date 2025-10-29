import 'package:dartz/dartz.dart';
import 'package:otex_app/core/database/models/plan_model.dart';
import 'package:otex_app/core/errors/failure.dart';

abstract class ProfileRepo {
  Future<Either<Failure, List<Plan>>> getAllPlans();
}
