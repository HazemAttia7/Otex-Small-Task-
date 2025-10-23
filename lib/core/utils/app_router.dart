import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otex_app/features/home/data/repos/home_repo_impl.dart';
import 'package:otex_app/features/home/presentation/manager/categories_cubit/categories_cubit.dart';
import 'package:otex_app/features/home/presentation/manager/products_cubit/products_cubit.dart';
import 'package:otex_app/features/home/presentation/manager/sub_categories_cubit/sub_categories_cubit.dart';
import 'package:otex_app/features/home/presentation/views/filtering_view.dart';
import 'package:otex_app/features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const kHomeView = "/";
  static const kFilteringView = "/filtering";
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kHomeView,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  CategoriesCubit(HomeRepoImpl())..fetchAllCategories(),
            ),
            BlocProvider(
              create: (context) =>
                  SubCategoriesCubit(HomeRepoImpl())..fetchAllSubcategories(),
            ),
            BlocProvider(
              create: (context) =>
                  ProductsCubit(HomeRepoImpl())..fetchAllProducts(),
            ),
          ],
          child: const HomeView(),
        ),
      ),
       GoRoute(
        path: kFilteringView,
        builder: (context, state) => const FilteringView(),
      ),
    ],
  );
}
