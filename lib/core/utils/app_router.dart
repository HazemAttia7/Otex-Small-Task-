import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:otex_app/core/utils/service_locator.dart';
import 'package:otex_app/features/home/data/repos/home_repo_impl.dart';
import 'package:otex_app/features/home/presentation/manager/categories_cubit/categories_cubit.dart';
import 'package:otex_app/features/home/presentation/manager/filtering_cubit/filtering_cubit.dart';
import 'package:otex_app/features/home/presentation/manager/property_details.dart/property_details_cubit.dart';
import 'package:otex_app/features/home/presentation/manager/sub_categories_cubit/sub_categories_cubit.dart';
import 'package:otex_app/features/home/presentation/views/filtering_view.dart';
import 'package:otex_app/features/home/presentation/views/home_view.dart';
import 'package:otex_app/features/main/presentation/views/main_view.dart';
import 'package:otex_app/features/profile/presentation/views/profile_view.dart';

abstract class AppRouter {
  static const kMainView = "/";
  static const kHomeView = "/home";
  static const kFilteringView = "/filtering";
  static const kProfileView = "/profile";
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(path: kMainView, builder: (context, state) => const MainView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kFilteringView,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (_) =>
                  PropertyDetailsCubit(getIt.get<HomeRepoImpl>())
                    ..fetchAllPropertyTypes(),
            ),
            BlocProvider(
              create: (_) => FilteringCubit(getIt.get<HomeRepoImpl>())
                ..fetchFilteredProductsCount(
                  selectedCategoryId: BlocProvider.of<CategoriesCubit>(
                    context,
                  ).selectedCategory?.id,
                  selectedSubCategoryId: BlocProvider.of<SubCategoriesCubit>(
                    context,
                  ).selectedSubCategory?.id,
                ),
            ),
          ],
          child: const FilteringView(),
        ),
      ),
      GoRoute(
        path: kProfileView,
        builder: (context, state) => const ProfileView(),
      ),
    ],
  );
}
