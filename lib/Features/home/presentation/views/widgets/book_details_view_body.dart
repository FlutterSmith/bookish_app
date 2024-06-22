import 'package:bookish/Features/home/data/models/book_model/book_model.dart';
import 'package:bookish/Features/home/presentation/views/widgets/books_details_section_one.dart';
import 'package:bookish/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookish/Features/home/presentation/views/widgets/similar_books_section_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 40,
              bottom: 20,
            ),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                const SizedBox(
                  height: 20,
                ),
                BookDetailsSectionOne(
                  book: bookModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 35,
                  ),
                ),
                const SimilarBooksSectionTwo(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
