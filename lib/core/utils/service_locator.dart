import 'package:get_it/get_it.dart';
import 'package:otex_app/core/database/daos/category_dao.dart';
import 'package:otex_app/core/database/daos/plan_dao.dart';
import 'package:otex_app/core/database/daos/product_dao.dart';
import 'package:otex_app/core/database/daos/sub_category_dao.dart';
import 'package:otex_app/features/home/data/repos/home_repo_impl.dart';
import 'package:otex_app/features/profile/data/repos/profile_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<CategoryDao>(CategoryDao());
  getIt.registerSingleton<SubCategoryDao>(SubCategoryDao());
  getIt.registerSingleton<ProductDao>(ProductDao());
  getIt.registerSingleton<PlanDao>(PlanDao());

  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      categoryDao: getIt<CategoryDao>(),
      subCategoryDao: getIt<SubCategoryDao>(),
      productDao: getIt<ProductDao>(),
    ),
  );
  getIt.registerSingleton<ProfileRepoImpl>(
    ProfileRepoImpl(planDao: getIt<PlanDao>()),
  );
}
