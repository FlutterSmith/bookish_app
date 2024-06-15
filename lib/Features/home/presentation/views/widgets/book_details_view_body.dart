import 'package:bookish/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookish/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookish/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookish/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookish/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookish/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 40,
              bottom: 20,
            ),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                SizedBox(height: 20),
                BookDetailsSectionOne(),
                Expanded(
                  child: SizedBox(
                    height: 35,
                  ),
                ),
                SimilarBooksSectionTwo(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class BookDetailsSectionOne extends StatelessWidget {
  const BookDetailsSectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: width * 0.22,
            right: width * 0.22,
            bottom: 20,
          ),
          child: const CustomBookImage(),
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle16.copyWith(
            fontStyle: FontStyle.italic,
            color: Colors.grey.shade300,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const BookRating(
          size: 15,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}

class SimilarBooksSectionTwo extends StatelessWidget {
  const SimilarBooksSectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w900),
        ),
        const SizedBox(
          height: 20,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
