import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otex_app/features/home/data/repos/home_repo_impl.dart';
import 'package:otex_app/features/home/presentation/manager/categories_cubit/categories_cubit.dart';
import 'package:otex_app/features/home/presentation/manager/filtering_cubit/filtering_cubit.dart';
import 'package:otex_app/features/home/presentation/manager/property_details.dart/property_details_cubit.dart';
import 'package:otex_app/features/home/presentation/manager/sub_categories_cubit/sub_categories_cubit.dart';
import 'package:otex_app/features/home/presentation/views/filtering_view.dart';
import 'package:otex_app/features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const kHomeView = "/";
  static const kFilteringView = "/filtering";
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kFilteringView,
        builder: (context, state) {
          final categoryId = context
              .read<CategoriesCubit>()
              .selectedCategory
              ?.id;
          final subCategoryId = context
              .read<SubCategoriesCubit>()
              .selectedSubCategory
              ?.id;

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
                      selectedCategoryId: categoryId,
                      selectedSubCategoryId: subCategoryId,
                    ),
              ),
            ],
            child: const FilteringView(),
          );
        },
      ),
    ],
  );
}
