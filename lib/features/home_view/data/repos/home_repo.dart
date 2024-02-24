import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home_view/data/models/BookModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<BookModel>>> fetchBestSellerBooks();

  Future<Either<Failure,List<BookModel>>> fetchFeatureBooks();
}
