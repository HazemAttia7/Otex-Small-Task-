import 'package:otex_app/core/database/database_helper.dart';
import 'package:otex_app/core/database/models/plan_features_model.dart';
import 'package:otex_app/core/database/models/plan_model.dart';

class PlanDao {
  Future<List<Plan>> getAllPlans() async {
    final db = await DatabaseHelper.instance.database;
    final planMaps = await db.query('Plans');
    final featureMaps = await db.query('Plan_Features');
    return planMaps.map((planMap) {
      final relatedFeatures = featureMaps
          .where((feature) => feature['plan_id'] == planMap['id'])
          .map((feature) => PlanFeatures.fromMap(feature))
          .toList();

      return Plan.fromMap(planMap, features: relatedFeatures);
    }).toList();
  }

  Future<Plan?> getPlanById({required int id}) async {
    final db = await DatabaseHelper.instance.database;
    final plan = await db.query(
      "Plans",
      where: "id = ?",
      whereArgs: [id],
      limit: 1,
    );
    final feature = await db.query(
      "Plans_Features",
      where: "plan_id = ?",
      whereArgs: [id],
      limit: 1,
    );
    return (plan.isNotEmpty && feature.isNotEmpty)
        ? Plan.fromMap(
            plan.first,
            features: [PlanFeatures.fromMap(feature.first)],
          )
        : null;
  }
}
