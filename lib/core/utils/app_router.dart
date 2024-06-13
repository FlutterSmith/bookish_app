import 'package:bookish/Features/home/presentation/views/home_view.dart';
import 'package:bookish/Features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
          path: '/homeView',
          pageBuilder: (context, state) {
            return CustomTransitionPage(
                transitionDuration: const Duration(seconds: 1),
                key: state.pageKey,
                child: const HomeView(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(
                      opacity: CurveTween(curve: Curves.easeInOutCirc)
                          .animate(animation),
                      child: child);
                });
          }),
    ],
  );
}
