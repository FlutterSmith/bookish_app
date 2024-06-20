import 'package:bookish/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookish/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookish/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookish/core/utils/styles.dart';
import 'package:flutter/material.dart';

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
          child: const CustomBookImage(
            imageUrl:
                'https://media.istockphoto.com/id/1411701868/photo/magic-book-with-glitter-open-book-with-lights-glowing-in-dark-background.webp?b=1&s=170667a&w=0&k=20&c=YRAsEE8YSqO_oMc0vtFDcIFrEO-t3yDoN_MkJ51PAlY=',
          ),
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
          rating: 4,
          ratingCount: 5,
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
