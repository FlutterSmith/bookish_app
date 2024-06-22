import 'package:bookish/Features/home/data/models/book_model/book_model.dart';
import 'package:bookish/Features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookish/Features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context)
        .getSimilarBooks(category: widget.bookModel.volumeInfo.categories![0]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsViewBody(),
    );
  }
}
