import 'package:bookly_app/core/error/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/utils/api_service.dart';

class HomeRepoImpl implements HomeRepo{
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async{
    try {
      var data = await apiService.get(endPoint: 'volumes?q=free-ebooks-newest');
      List<BookModel> books = [];
      for(var item in data['item']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e){
      if (e is DioException){
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(endPoint: 'volumes?q=free-ebooks');
      List<BookModel> books = [];
      for(var item in data['item']){
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e){
      if (e is DioException){
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}