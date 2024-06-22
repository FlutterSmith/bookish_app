import 'package:bookish/Features/home/presentation/manger/featered_books_cubit/featured_books_cubit.dart';
import 'package:bookish/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookish/core/utils/app_router.dart';
import 'package:bookish/core/utils/widgets/circular_progress.dart';
import 'package:bookish/core/utils/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    right: 15,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBookDetailsView,
                          extra: state.books[index]);
                    },
                    child: CustomBookImage(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail ??
                              '',
                    ),
                  ),
                );
              },
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
            ),
          );
        } else if (state is FeaturedBooksFailed) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomCirclerProgress();
        }
      },
    );
  }
}
