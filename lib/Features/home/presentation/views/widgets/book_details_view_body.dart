import 'package:bookish/Features/home/presentation/views/widgets/books_details_section_one.dart';
import 'package:bookish/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookish/Features/home/presentation/views/widgets/similar_books_section_two.dart';
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
                SizedBox(
                  height: 20,
                ),
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
