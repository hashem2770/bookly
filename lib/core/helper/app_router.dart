import 'package:bookly/features/splash_view/feature/view/splash_view.dart';
import 'package:go_router/go_router.dart';

final booklyRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'splash_screen',
      builder: (context, state) {
        return const SplashView();
      },
    ),
  ],
);
