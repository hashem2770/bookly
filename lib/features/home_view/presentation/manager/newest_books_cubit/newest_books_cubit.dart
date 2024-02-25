import 'package:bloc/bloc.dart';
import 'package:bookly/features/home_view/data/repos/home_repo_impl.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/BookModel.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepoImpl) : super(NewestBooksInitial());
  HomeRepoImpl homeRepoImpl;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepoImpl.fetchNewestBooks();
    result.fold(
      (failure) => emit(NewestBooksFailure(failure.errMessage)),
      (books) => emit(NewestBooksSuccess(books)),
    );
  }
}
