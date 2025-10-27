import 'package:go_router/go_router.dart';
import 'package:otex_app/features/home/presentation/views/filtering_view.dart';
import 'package:otex_app/features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const kHomeView = "/";
  static const kFilteringView = "/filtering";
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kHomeView,
        builder: (context, state) => 
          const HomeView(),
      ),
       GoRoute(
        path: kFilteringView,
        builder: (context, state) => const FilteringView(),
      ),
    ],
  );
}
