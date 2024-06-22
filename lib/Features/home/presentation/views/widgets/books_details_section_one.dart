import 'package:bookish/Features/home/data/models/book_model/book_model.dart';
import 'package:bookish/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookish/Features/home/presentation/views/widgets/books_action.dart';
import 'package:bookish/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookish/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSectionOne extends StatelessWidget {
  const BookDetailsSectionOne({super.key, required this.book});

  final BookModel book;
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
          child: CustomBookImage(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        Text(
          book.volumeInfo.title ?? '',
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          book.volumeInfo.authors?[0] ?? '',
          style: Styles.textStyle16.copyWith(
            fontStyle: FontStyle.italic,
            color: Colors.grey.shade300,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        BookRating(
          rating: book.volumeInfo.averageRaing ?? 0,
          ratingCount: book.volumeInfo.ratingsCount ?? 0,
          size: 15,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
         BooksAction(bookModel: book,),
      ],
    );
  }
}
