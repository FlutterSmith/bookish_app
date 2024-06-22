import 'package:bookish/Features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookish/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookish/core/utils/widgets/circular_progress.dart';
import 'package:bookish/core/utils/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(
                    right: 10,
                  ),
                  child: CustomBookImage(
                    imageUrl:
                        'https://media.istockphoto.com/id/1411701868/photo/magic-book-with-glitter-open-book-with-lights-glowing-in-dark-background.webp?b=1&s=170667a&w=0&k=20&c=YRAsEE8YSqO_oMc0vtFDcIFrEO-t3yDoN_MkJ51PAlY=',
                  ),
                );
              },
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
            ),
          );
        } else if (state is SimilarBooksFailed) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomCirclerProgress();
        }
      },
    );
  }
}
