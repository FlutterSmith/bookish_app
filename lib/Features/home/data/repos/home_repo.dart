import 'package:bookish/Features/home/data/models/book_model/book_model.dart';
import 'package:bookish/core/errors/failure.dart';
import 'package:bookish/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  final ApiService apiService;
  HomeRepo(this.apiService);
  Future<Either<Failure, List<BookModel>>> getNewestBooks();

  Future<Either<Failure, List<BookModel>>> getFeaturedBooks();

  Future<Either<Failure, List<BookModel>>> getSimilarBooks(
      {required String category});
}
