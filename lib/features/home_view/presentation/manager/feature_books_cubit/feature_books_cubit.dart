import 'package:bloc/bloc.dart';
import 'package:bookly/features/home_view/data/repos/home_repo_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../../core/errors/failure.dart';
import '../../../data/models/BookModel.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepoImpl) : super(FeatureBooksInitial());
  HomeRepoImpl homeRepoImpl;

  Future<void> fetchFeatureBooks() async {
    emit(FeatureBooksLoading());
    Either<Failure, List<BookModel>> result =
        await homeRepoImpl.fetchFeatureBooks();
    result.fold(
      (failure) => emit(FeatureBooksFailure(failure.errMessage)),
      (books) => emit(FeatureBooksSuccess(books)),
    );
  }
}
