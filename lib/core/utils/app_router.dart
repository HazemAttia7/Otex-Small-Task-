import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otex_app/core/database/models/category_model.dart';
import 'package:otex_app/core/database/models/sub_category_model.dart';
import 'package:otex_app/features/home/data/repos/home_repo_impl.dart';
import 'package:otex_app/features/home/presentation/manager/filtering_cubit/filtering_cubit.dart';
import 'package:otex_app/features/home/presentation/manager/property_details.dart/property_details_cubit.dart';
import 'package:otex_app/features/home/presentation/views/filtering_view.dart';
import 'package:otex_app/features/home/presentation/views/home_view.dart';
import 'package:otex_app/features/main/presentation/views/main_view.dart';

abstract class AppRouter {
  static const kMainView = "/";
  static const kHomeView = "/home";
  static const kFilteringView = "/filtering";
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kMainView,
        builder: (context, state) =>const MainView()
      ),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kFilteringView,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>?;
          final selectedCategory = extra?['selectedCategory'] as Category?;
          final selectedSubCategory =
              extra?['selectedSubCategory'] as SubCategory?;

          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) =>
                    PropertyDetailsCubit(HomeRepoImpl())
                      ..fetchAllPropertyTypes(),
              ),
              BlocProvider(
                create: (_) =>
                    FilteringCubit(HomeRepoImpl())..fetchFilteredProductsCount(
                      selectedCategoryId: selectedCategory?.id,
                      selectedSubCategoryId: selectedSubCategory?.id,
                    ),
              ),
            ],
            child: FilteringView(
              selectedCategory: selectedCategory,
              selectedSubCategory: selectedSubCategory,
            ),
          );
        },
      ),
    ],
  );
}
