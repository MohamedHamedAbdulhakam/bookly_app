import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const khmomeview = '/homeView';
  static const ksearchview = '/searchView';
  static const kbookDetailsView = '/bookDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: khmomeview,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kbookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: ksearchview,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
