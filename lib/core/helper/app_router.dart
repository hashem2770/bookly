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
  ],
);
