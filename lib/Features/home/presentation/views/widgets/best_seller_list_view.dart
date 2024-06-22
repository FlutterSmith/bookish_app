import 'package:bookish/Features/home/data/models/book_model/book_model.dart';
import 'package:bookish/Features/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookish/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookish/core/utils/app_router.dart';
import 'package:bookish/core/utils/widgets/circular_progress.dart';
import 'package:bookish/core/utils/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 10,
              top: 10,
            ),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return NewestListViewItem(
                  bookModel: state.books[index],
                );
              },
              itemCount: state.books.length,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
            ),
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomCirclerProgress();
        }
      },
    );
  }
}
