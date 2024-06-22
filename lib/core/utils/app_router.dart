import 'package:bookish/Features/home/data/models/book_model/book_model.dart';
import 'package:bookish/Features/home/data/repos/hope_repo_impl.dart';
import 'package:bookish/Features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookish/Features/home/presentation/views/book_details_view.dart';
import 'package:bookish/Features/home/presentation/views/home_view.dart';
import 'package:bookish/Features/splash/presentation/views/splash_view.dart';
import 'package:bookish/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kSplashView = '/';
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
          path: kHomeView,
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
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()), 
          child:  BookDetailsView(bookModel: state.extra as BookModel,),),
      ),
      // GoRoute(
      //   path: kSearchView,
      //   builder: (context, state) => const SearchView(),
      // ),
    ],
  );
}
