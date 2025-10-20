import 'package:go_router/go_router.dart';
import 'package:otex_app/features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const kHome = "/";
  static GoRouter router = GoRouter(routes: [
      GoRoute(path: kHome, builder: (context, state) => const HomeView()),
  ]);
}