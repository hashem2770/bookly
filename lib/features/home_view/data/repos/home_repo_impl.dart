import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/helper/api_service.dart';
import 'package:bookly/features/home_view/data/models/BookModel.dart';
import 'package:bookly/features/home_view/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService _apiService;

  HomeRepoImpl(ApiService apiService) : _apiService = apiService;

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var result = await _apiService.get(
          endPoint:
              'volumes?filtering=free-ebooks&sorting=newest&q=subject:health');

      List<BookModel> newestBooks = [];
      for (final book in result['items']) {
        newestBooks.add(BookModel.fromJson(book));
      }
      return right(newestBooks);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() async {
    try {
      var result = await _apiService.get(
          endPoint:
              'volumes?filtering=free-ebooks&q=subject:health');

      List<BookModel> relevanceBooks = [];
      for (final book in result['items']) {
        relevanceBooks.add(BookModel.fromJson(book));
      }
      return right(relevanceBooks);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
