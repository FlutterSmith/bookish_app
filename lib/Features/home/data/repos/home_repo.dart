import 'package:bookish/Features/home/data/models/book_model/book_model.dart';
import 'package:bookish/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> getBestSellerBooks();

  Future<Either<Failure, List<BookModel>>> getFeaturedBooks();
}
