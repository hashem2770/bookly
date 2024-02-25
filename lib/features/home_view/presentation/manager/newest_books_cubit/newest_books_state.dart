part of 'newest_books_cubit.dart';

abstract class NewestBooksState extends Equatable {
  const NewestBooksState();
}

class NewestBooksInitial extends NewestBooksState {
  @override
  List<Object> get props => [];
}

class NewestBooksLoading extends NewestBooksState {
  @override
  List<Object> get props => [];
}
class NewestBooksFailure extends NewestBooksState {
  final String errMessage;

  const NewestBooksFailure(this.errMessage);

  @override
  List<Object> get props => [errMessage];
}

class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> newBooks;

  const NewestBooksSuccess(this.newBooks);

  @override
  List<Object> get props => [newBooks];
}