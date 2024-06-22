import 'package:bloc/bloc.dart';
import 'package:bookish/Features/home/data/models/book_model/book_model.dart';
import 'package:bookish/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;
  Future<void> getSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.getSimilarBooks(category: category);

    result.fold(
      (failure) {
        emit(SimilarBooksFailed(failure.errMessage));
      },
      (books) {
        emit(SimilarBooksSuccess(books));
      },
    );
  }
}
