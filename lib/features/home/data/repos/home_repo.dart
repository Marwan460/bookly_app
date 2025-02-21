import 'package:bookly_app/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import '../models/book_model/book_model.dart';

abstract class HomeRepo{
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failures, List<BookModel>>> fetchSimilarBooks({required String category});
}