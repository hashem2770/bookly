import 'package:bookly/features/home_view/data/models/BookModel.dart';
import 'package:bookly/features/home_view/presentation/view/book_details_view.dart';
import 'package:bookly/features/home_view/presentation/view/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash_view/presentation/view/splash_view.dart';

final booklyRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'splash_screen',
      builder: (context, state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: '/home_view',
      name: 'home_screen',
      builder: (context, state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: '/details_view',
      name: 'details_screen',
      builder: (context, state) {
        BookModel book = state.extra as BookModel; // 👈 casting is important
        return  BookDetailsView(book: book,);
      },
    ),
  ],
);
