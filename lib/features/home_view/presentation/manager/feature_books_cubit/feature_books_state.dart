part of 'feature_books_cubit.dart';

abstract class FeatureBooksState extends Equatable {
  const FeatureBooksState();
}

class FeatureBooksInitial extends FeatureBooksState {
  @override
  List<Object> get props => [];
}
class FeatureBooksLoading extends FeatureBooksState {
  @override
  List<Object> get props => [];
}
class FeatureBooksFailure extends FeatureBooksState {
  final String errMessage;
  const FeatureBooksFailure(this.errMessage);
  @override
  List<Object> get props => [errMessage];
}
class FeatureBooksSuccess extends FeatureBooksState {
  final List<BookModel> books;
  const FeatureBooksSuccess(this.books);
  @override
  List<Object> get props => [books];
}