import 'package:bookish/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookish/core/utils/styles.dart';
import 'package:flutter/material.dart';

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
