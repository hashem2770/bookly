import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/helper/api_service.dart';
import 'package:bookly/features/home_view/data/models/BookModel.dart';
import 'package:bookly/features/home_view/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService _apiService;

  HomeRepoImpl(ApiService apiService) : _apiService = apiService;

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var result = await _apiService.get(
          endPoint:
              'volumes?filtering=free-ebooks&sorting=newest&q=subject:health');

      List<BookModel> books = [];
      for (final book in result['items']) {
        books.add(book);
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }
}
